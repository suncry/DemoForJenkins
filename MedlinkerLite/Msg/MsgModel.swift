//
//  MsgModel.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/12/7.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class MsgModel: CYModel {
    typealias success = (_ list: [String]) -> ()
    typealias fail = (_ errorMsg: String) -> ()
    
    class func history(id: Int, start: Int, limit: Int, success: @escaping success, fail: @escaping fail) {
        
//        let strArr = sId.components(separatedBy: "-")
//        guard strArr.count > 1 else {return 0}
//        let toRef = Int32(strArr[1]) ?? 0

        
        let params: [String: Any] = [
            "toId" : NSNumber(value: id),
            "toRef" : 0,
            "start" : NSNumber(value: start),
            "limit" : limit,
            "sort" : 1
        ]
        

        CYNetwork.request(path: MLConstant.webServicePath.messageHistory, parameters: params, method: .get, host: .im, success: { (jsonData) in
            guard let list = jsonData["list"] as? [String] else {return}
//            let patientList = Mapper<User>().mapArray(JSONArray: list)
            success(list)
            
            
            
            

        }) { (errorSting) in
            fail(errorSting)
        }
        
        
    }

}


//enum IMUserReference: Int32 {
//    case medlinker = 0  // 医联用户
//    case agent = 1      // 经纪人
//    case system = 9     // 系统用户
//}

//@objc dynamic var reference: Int32 = 0 { // 用户类型 IMUserReference
//    didSet {
//        key = "\(reference)-\(uId)"
//    }
//}

//session.sId = "\(IMSessionType.single.rawValue)-\(user.reference)-\(user.uId)"
