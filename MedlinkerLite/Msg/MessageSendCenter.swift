//
//  MessageSendCenter.swift
//  MedLinker
//
//  Created by 王洋 on 2018/5/10.
//  Copyright © 2018年 medlinker. All rights reserved.
//

import UIKit
//import RealmSwift
import ObjectMapper

enum SendType: Int {
    case text
    case image
    case card
    case prescription
    case notice  // 提示消息
    case evaluation  // 评测

}

class MessageSendCenter: NSObject {
    static let share = MessageSendCenter()
    private var queue = [Message]()
//    private lazy var prescriptionModel = MLPrescriptionDetailModel()
    private var sendingMsgCount = 0
    private var complection: ((_ success: Bool) -> Void)?
    
    func sendRawData(_ data: [String : Any], complection: @escaping (_ success: Bool) -> Void) {
        let users = Mapper<User>().mapArray(JSONObject: data["users"]) ?? []
//        let users = Mapper<User>().mapArray(JSON: data["users"]) ?? []
        //缺少 group 类型
        let groups = Mapper<User>().mapArray(JSONObject: data["groups"]) ?? []
        
        guard let sendType = _checkData(users, groups, data) else {
            complection(false)
            return
        }
        
        self.complection = complection
        objc_sync_enter(self)
        
        sendingMsgCount = users.count + groups.count
        
        _saveTargets(users, groups)
        
        for user in users {
            _sendData(user, nil, sendType, data, finish: { [weak self] (success) in
                self?._handleMsgResponse(success)
            })
        }
        
        for group in groups {
            _sendData(nil, group, sendType, data, finish: { [weak self] (success) in
                self?._handleMsgResponse(success)
            })
        }
    }
    
    func add(_ protoMsg: Protocol_Message_Message,
             timeStamp: Int64,
             finish: ((_ success: Bool) -> Void)? = nil,
             preSend: (() -> Void)? = nil) {
        let msg = Message(protoMsg, timeStamp, preSend)
        msg.finish = { (success) in
            //TO DO
//            self?.queue.removeAll(msg)
            finish?(success)
        }
        queue.append(msg)
        msg.start()
    }
    
//    func updateMsgState(_ timeStamp: Int64,
//                        _ state: IMMessageState,
//                        _ protoMsg: Protocol_Message_Message?) {
//        let realm = try? Realm()
//        let localMsg = IMMessage.instance(timeStamp: timeStamp, realm: realm)
//        realm?.beginWrite()
//        localMsg.state = state.rawValue
//
//        if let validProtoMsg = protoMsg {
//            localMsg.protoJsonStr = try? validProtoMsg.jsonString()
//        }
//
//        realm?.add(localMsg, update: true)
//        _ = try? realm?.commitWrite()
//    }
    
    //发送处方
//    func sendPrescription(pId: Int64, user: User?, group: User?, finish: @escaping ((_ success: Bool) -> Void)) {
//        prescriptionModel.fetch(pId: pId) { [weak self] (drugs, jsonData, error) in
//            guard let json = jsonData else {
//                finish(false)
//                return
//            }
//            let result = IMMessageConstructor.share.constructJson(json, .receipe, target: (user, group))
//            if let msg = result.msg {
//                self?.add(msg, timeStamp: result.timeStamp, finish: { (success) in
//                    finish(success)
//                })
//            } else {
//                finish(false)
//            }
//        }
//    }
    
    
    private func _handleMsgResponse(_ success: Bool) {
        sendingMsgCount = sendingMsgCount - 1
        if sendingMsgCount < 1 || !success {
            complection?(success)
            sendingMsgCount = 0
            objc_sync_exit(self)
        }
    }
    
    private func _checkData(_ users: [User], _ groups: [User], _ data: [String : Any]) -> SendType? {
        guard users.count > 0 || groups.count > 0 else { return nil }
        guard let type = data["type"] as? Int, let sendType = SendType(rawValue: type) else { return nil }

        return sendType
    }

    private func _saveTargets(_ users: [User], _ groups: [User]) {
//        let realm = try? Realm()
//        realm?.beginWrite()
//
//        for user in users {
//            user.updateWithOld(realm: realm)
//        }
//        realm?.add(users, update: true)
//        for group in groups {
//            group.updateWithOld(realm: realm)
//        }
//
//        _ = try? realm?.commitWrite()
    }
    
    private func _sendData(_ user: User?,
                           _ group: User?,
                           _ type: SendType,
                           _ data: [String : Any],
                           finish: @escaping (_ success: Bool) -> Void) {
//        switch type {
//        case .text, .notice:
//            if let text = data["text"] as? String {
//                let result = type == .text ? IMMessageConstructor.share.constructText(text, target: (user, group)) : IMMessageConstructor.share.constructNotice(text, target: (user, group))
//                if let msg = result.msg {
//                    self.add(msg, timeStamp: result.timeStamp, finish: { (success) in
//                        finish(success)
//                    })
//                } else {
//                    finish(false)
//                }
//            } else {
//                finish(false)
//            }
//        case .image:
//            if let image = data["image"] as? String {
//                IMMessageConstructor.share.constructImage(nil,
//                                                          UIImage(contentsOfFile: image),
//                                                          target: (user, group),
//                                                          complection: { [weak self] (timeStamp, msg) in
//                    guard let msg = msg else {
//                        finish(false)
//                        return
//                    }
//                    self?.add(msg, timeStamp: timeStamp, finish: { (success) in
//                        finish(success)
//                    })
//                })
//            } else {
//                finish(false)
//            }
//        case .card:
//            let cardDic = data["card"] as? [String : Any]
//            var card = Protocol_Message_Types_Card()
//            card.label = (cardDic?["label"] as? String) ?? ""
//            card.title = (cardDic?["title"] as? String) ?? ""
//            card.summary = (cardDic?["summary"] as? String) ?? ""
//            card.image = (cardDic?["image"] as? String) ?? ""
//            card.url = (cardDic?["jumpUrl"] as? String) ?? ""
//            card.extra = (cardDic?["h5Url"] as? String) ?? ""
//
//            let result = IMMessageConstructor.share.constructCard(card, target: (user, group))
//            if let msg = result.msg {
//                add(msg, timeStamp: result.timeStamp, finish: { (success) in
//                    finish(success)
//                })
//            } else {
//                finish(false)
//            }
//        case .prescription:
//            guard let pId = data["prescriptionId"] as? Int64 else {
//                finish(false)
//                return
//            }
//            sendPrescription(pId: pId, user: user, group: group, finish: finish)
//        case .evaluation:
//            let dicJson = data.jsonString() ?? ""
//            let result = IMMessageConstructor.share.constructJson(dicJson, .evaluation, target: (user, group))
//            if let msg = result.msg {
//                self.add(msg, timeStamp: result.timeStamp, finish: { (success) in
//                    finish(success)
//                })
//            } else {
//                finish(false)
//            }
//        }
    }
}

extension MessageSendCenter {
    class Message: NSObject {
        private var protoMsg: Protocol_Message_Message
        private var timeStamp: Int64
        private var preSend: (() -> Void)?
        var finish: ((_ success: Bool) -> Void)?
        
        init(_ protoMsg: Protocol_Message_Message,
             _ timeStamp: Int64,
             _ preSend: (() -> Void)?) {
            self.protoMsg = protoMsg
            self.timeStamp = timeStamp
            self.preSend = preSend
        }
        
        func start() {
            preSend?()
            _saveProto()
            
//            let msg = protoMsg
//            IMHttpManager.shareInstance.sendMsg(msg: msg) { [weak self] (data, error) in
//                if let error = error {
//                    let errMsg = error.serviceMessage
//                    MLToast.message(errMsg.isEmptyString() ? error.message : errMsg)
//                } else {
//                    let data: [String : Any] = [
//                        "toUserId": msg.user.id,
//                        "toGroupId": msg.group.id,
//                    ]
//                    NotificationCenter.default.post(name: NSNotification.Name("kSendMessageSuccessful"), object: nil, userInfo: data)
//                }
//
//                let dataDic = data as? [String : Any]
//                let messageId = dataDic?["msgId"] as? Int64
//                let success = (error == nil) && (messageId != nil)
//                let state: IMMessageState = success ? .success : .failure
//
//                self?._updateState(state, messageId)
//                self?.finish?(success)
//            }
        }
        
        private func _saveProto() {
//            let realm = try? Realm()
//            let localMsg = IMMessage.instance(timeStamp: timeStamp, realm: realm)
//
//            realm?.beginWrite()
//
//            localMsg.protoJsonStr = try? protoMsg.jsonString()
//
//            realm?.add(localMsg, update: true)
//            _ = try? realm?.commitWrite()
        }
        
//        private func _updateState(_ state: IMMessageState,
//                                  _ newId: Int64?) {
//            let realm = try? Realm()
//            let localMsg = IMMessage.instance(timeStamp: timeStamp, realm: realm)
//
//            realm?.beginWrite()
//
//            localMsg.state = state.rawValue
//            if let validId = newId {
//                localMsg.mId = validId
//            }
//
//            localMsg.imgUrl = protoMsg.image.url
//
//            realm?.add(localMsg, update: true)
//            _ = try? realm?.commitWrite()
//        }
    }
}
