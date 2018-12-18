////
////  IMUser.swift
////  MedLinker
////
////  Created by 王洋 on 2017/2/21.
////  Copyright © 2017年 medlinker. All rights reserved.
////
//
//import UIKit
////import RealmSwift
//import ObjectMapper
//
//enum IMUserReference: Int32 {
//    case medlinker = 0  // 医联用户
//    case agent = 1      // 经纪人
//    case system = 9     // 系统用户
//}
//
//enum IMUserState: Int {
//    case addFriend = 1
//    case acceptFriend = 2
//    case sendMessage = 3
//}
//
//enum SpecialUserId: Int64 {
//    case system = 0          // 系统通知
//    case businessUser = 1    // 业务用户
//    case newFriend = 2       // 新的朋友
//    case dynamic = 4         // 动态相关通知
//    case order = 5           // 订单相关
//    case hospitalTips = 6    // 事项提醒
//}
//
//enum BrokerUserType: Int {
//    case surgery = 1    // 出转诊经纪人
//    case drug = 2       // 药品经纪人
//}
//
//
//
//class IMUser: Object, MLMappable {
//
//    static let AllUserId: Int64 = -2222 // 代表所有的用户
//
//    @objc dynamic var key: String = ""
//    @objc dynamic var uId: Int64 = -1 {
//        didSet {
//            key = "\(reference)-\(uId)"
//        }
//    }
//    @objc dynamic var agentId: Int64 = -1 // 兼容经纪人接口，需要将agentId赋值给uId
//    @objc dynamic var reference: Int32 = 0 { // 用户类型 IMUserReference
//        didSet {
//            key = "\(reference)-\(uId)"
//        }
//    }
//    @objc dynamic var name: String?
//    @objc dynamic var pinyin: String? {
//        didSet {
//            firstChar = pinyin?.firstChar()
//        }
//    }
//    @objc dynamic var firstChar: String?
//    @objc dynamic var avatar: String?
//    @objc dynamic var sex: Int = 0            // 性别 0未设置 1男 2女
//
//    @objc dynamic var type: Int = 0           // 用户角色，对应 UserType
//    @objc dynamic var brokerType: Int = 0     // 经纪人类型，对应 BrokerUserType
//    @objc dynamic var brokerTypeText: String = ""   //类型文案
//    @objc dynamic var hospital: String?
//    @objc dynamic var sectionName: String?
//    @objc dynamic var title: String?      // 职称
//    @objc dynamic var medNumber: String?  // 医联号
//    @objc dynamic var cellphone: String?
//
//    @objc dynamic var isFriend: Bool = false    // 是否是用户好友
//    @objc dynamic var isNewFriend: Bool = false // 是否是是新的朋友
//    @objc dynamic var isInContact: Bool = false // 是否是通讯录用户
//    @objc dynamic var isWorkmate: Bool = false  // 是否是同院同事
//
//    @objc dynamic var friendOperationContent: String?  // 加好友信息
//
//    @objc dynamic var jumpUrl: String?
//
//    var age: Int = 0
//
//    var patientJumpUrl: String? {
//        get {
//            if type == UserType.thirdParty.rawValue {
//                return kH5ServiceHost + "/h5/hospital/h_patientdetail.html?id=\(uId)"
//            }
//            return nil
//        }
//    }
//
//    var doctorJumpUrl: String? {
//        get {
//            if reference == IMUserReference.agent.rawValue {
//                if brokerType == BrokerUserType.drug.rawValue {
//                    return "\(kH5ServiceHost)/h5/hospital/drugbrokerhome.html?brokerId=\(uId)"
//                } else {
//                    return "\(kH5ServiceHost)/h5/hospital/agenthome.html?brokerid=\(uId)"
//                }
//            } else if type == UserType.Organization.rawValue { // 机构
//                return "\(kH5ServiceHost)/h5/hospital/orghome.html?userid=\(uId)"
//            } else {
//                return "\(kH5ServiceHost)/h5/hospital/doctorhome.html?userid=\(uId)"
//            }
//        }
//    }
//
//    @objc dynamic var session: IMSession?
//    var sessionKey: String {
//        get {
//            return IMUser.sessionKeyFrom(uId: uId, reference: reference)
//        }
//    }
//
//    @objc var isChoosed: Bool = false // 是否被选中，用于用户选择列表，不需要入库
//
//    var typeStr: String {
//        get {
//            if reference == IMUserReference.agent.rawValue {
//                return "经纪人"
//            } else if reference == IMUserReference.medlinker.rawValue {
//                if type == UserType.thirdParty.rawValue {
//                    return "患者"
//                } else if type == UserType.Organization.rawValue {
//                    return "机构"
//                } else {
//                    return "医生"
//                }
//            }
//            return ""
//
//            /// MARK: 以前的判定逻辑
//            //            if reference == IMUserReference.agent.rawValue {
//            //                return "经纪人"
//            //            } else if type == UserType.thirdParty.rawValue {
//            //                return "患者"
//            //            } else if type == UserType.Organization.rawValue {
//            //                return "机构"
//            //            } else if uId == SpecialUserId.system.rawValue ||
//            //                uId == SpecialUserId.dynamic.rawValue ||
//            //                uId == SpecialUserId.order.rawValue {
//            //                return ""
//            //            } else {
//            //                return "医生"
//            //            }
//        }
//    }
//    var typeColor: Int {
//        get {
//            if reference == IMUserReference.agent.rawValue {
//                return 0xBD0FE1
//            } else if type == UserType.thirdParty.rawValue {
//                return 0xFFAF52
//            } else if type == UserType.Organization.rawValue {
//                return 0x4792E8
//            } else {
//                return 0x1AD695
//            }
//        }
//    }
//
//    var state: IMUserState {
//        get {
//            if isFriend || reference == IMUserReference.agent.rawValue || self.uId == MLLoginUser.shared.user?.userId {
//                return .sendMessage
//            } else if isNewFriend {
//                return .acceptFriend
//            } else {
//                return .addFriend
//            }
//        }
//    }
//
//    override static func primaryKey() -> String? {
//        return "key"
//    }
//
//    required convenience init?(map: Map) {
//        self.init()
//    }
//
//    func mapping(map: Map) {
//        uId         <- (map["userId"], Int64Transform())
//        agentId     <- (map["id"], Int64Transform())
//        name        <- map["name"]
//        avatar      <- map["avatar"]
//        reference   <- map["reference"]
//        type        <- map["type"]
//        brokerType  <- map["brokerType"]
//        brokerTypeText    <- map["brokerTypeText"]
//        hospital    <- map["hospital"]
//        sectionName <- map["sectionName"]
//        medNumber   <- map["medNumber"]
//        jumpUrl     <- map["jumpUrl"]
//        title       <- map["titleName"]
//        isFriend    <- (map["isFriend"], BoolTransform())
//        sex         <- map["sex"]
//        cellphone   <- map["cellphone"]
//    }
//
//    static func instance(uId: Int64, reference: Int32, realm: Realm?) -> IMUser {
//        guard let user = realm?.objects(IMUser.self).filter("uId==\(uId) && reference==\(reference)").first else {
//            let newUser = IMUser()
//            newUser.uId = uId
//            newUser.reference = reference
//            return newUser
//        }
//        return user
//    }
//
//    static func instance(uId: Int64?, reference: Int32?, realm: Realm?) -> IMUser? {
//        guard let validId = uId, let validRef = reference else {return nil}
//        return instance(uId: validId, reference: validRef, realm: realm)
//    }
//
//    static func optionInstance(uId: Int64, reference: Int32, realm: Realm?) -> IMUser? {
//        return realm?.objects(IMUser.self).filter("uId==\(uId) && reference==\(reference)").first
//    }
//
//    static func sessionKeyFrom(uId: Int64, reference: Int32) -> String {
//        return "\(IMSessionType.single.rawValue)-\(reference)-\(uId)"
//    }
//
//    func updateWithOld(realm: Realm?) {
//        guard let oldUser = realm?.objects(IMUser.self).filter("uId==\(uId) && reference==\(reference)").first else {return}
//        self.isFriend = oldUser.isFriend
//        self.isNewFriend = oldUser.isNewFriend
//        self.isInContact = oldUser.isInContact
//        self.isWorkmate = oldUser.isWorkmate
//        self.friendOperationContent = oldUser.friendOperationContent
//
//        if let validPinyin = oldUser.pinyin, !validPinyin.isEmptyString() {
//            self.pinyin = validPinyin
//        }
//
//        if let validUrl = oldUser.jumpUrl, !validUrl.isEmptyString() {
//            self.jumpUrl = validUrl
//        }
//    }
//
//    public func defaultAvatarImageName() -> String {
//        return "user_male_default_avatar"
//    }
//
//    func isVerified() -> Bool {
//        return type == UserType.Doctor.rawValue || type == UserType.Organization.rawValue
//    }
//
//    func sectionTitleStr() -> String {
//        let sectionName = self.sectionName ?? ""
//        let titleName = self.title ?? ""
//        let sectionTitle = sectionName
//        if !sectionName.isEmptyString() && !titleName.isEmptyString() {
//            return "\(sectionName) / \(titleName)"
//        } else {
//            return sectionTitle + titleName
//        }
//    }
//
//    func sectionTitleHospitalStr() -> String {
//        let sectionTitleStr = self.sectionTitleStr()
//        let hospitalStr = hospital ?? ""
//
//        if !sectionTitleStr.isEmptyString() && !hospitalStr.isEmptyString() {
//            return "\(sectionTitleStr) / \(hospitalStr)"
//        } else {
//            return sectionTitleStr + hospitalStr
//        }
//    }
//
//    func saveUser() -> Bool {
//        let target = IMUser.optionInstance(uId: uId, reference: reference, realm: (try? Realm()))
//        if target == nil {
//            let userDic = self.toJSON()
//            DispatchQueue.global().async {
//                let realm = try? Realm()
//                guard let newUser = MLMapper<IMUser>().map(JSON: userDic) else {return}
//                realm?.beginWrite()
//                realm?.add(newUser, update: true)
//                _ = try? realm?.commitWrite()
//            }
//            return true
//        } else {
//            return false
//        }
//    }
//
//    func hospitalSectionString() -> String {
//        return _infoString([hospital ?? "", sectionName ?? ""])
//    }
//
//    func sectionHospitalString() -> String {
//        return _infoString([sectionName ?? "", hospital ?? ""])
//    }
//
//    func sexToString() -> String {
//        switch sex {
//        case 1:
//            return "男"
//        case 2:
//            return "女"
//        default:
//            return ""
//        }
//    }
//
//    private func _infoString(_ itemArr: [String]) -> String {
//        var retStr = ""
//
//        for item in itemArr {
//            if !item.isEmptyString() {
//                if !retStr.isEmptyString() {
//                    retStr += " / "
//                }
//                retStr += item
//            }
//        }
//
//        return retStr
//    }
//}
//
//extension UIImageView {
//    func setUserImage(user: IMUser?, size: CGSize? = nil) {
//
//        if let validUser = user {
//            let defaultName = validUser.defaultAvatarImageName()
//            let defaultImg = UIImage(named: defaultName)
//
//            if let avatarUrl = validUser.avatar, !avatarUrl.isEmptyString() {
//                ml_setImageWithRoundCorner(urlString: avatarUrl, placeholder: defaultImg, cornerRadius: nil, size: size)
//            } else {
//                self.image = defaultImg
//            }
//        } else {
//            self.image = UIImage(named: "user_male_default_avatar")
//        }
//    }
//}
