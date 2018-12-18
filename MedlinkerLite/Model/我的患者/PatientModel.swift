//
//  PatientModel.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/30.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class PatientModel: CYModel {
    typealias loginSuccess = (_ patientList: [User]) -> ()
    typealias LoginFail = (_ errorMsg: String) -> ()
    
    class func all(start: Int, limit: Int, loginSuccess: @escaping loginSuccess, LoginFail: @escaping LoginFail) {
        let params: [String : String] = [
            "start": "\(start)",
            "limit": "\(limit)"
//            "pname": "",
//            "areaName": "",
//            "illnessesId": "",
//            "search": "",
//            "openType": "",
        ]
        
        
        CYNetwork.request(path: MLConstant.webServicePath.patientAll, parameters: params, method: .get, host: .d2d, success: { (jsonData) in
            
            guard let list = jsonData["list"] as? [[String : Any]] else {return}
            let patientList = Mapper<User>().mapArray(JSONArray: list)
            loginSuccess(patientList)

        }) { (errorSting) in
            LoginFail(errorSting)

        }
        
    }

    class func search(_ content: String, start: Int, limit: Int, loginSuccess: @escaping loginSuccess, LoginFail: @escaping LoginFail) {
        let params: [String : String] = [
            "start": "\(start)",
            "limit": "\(limit)",
            //            "pname": "",
            //            "areaName": "",
            //            "illnessesId": "",
            "search": content,
            //            "openType": "",
        ]
        
        
        CYNetwork.request(path: MLConstant.webServicePath.patientAll, parameters: params, method: .get, host: .d2d, success: { (jsonData) in
            
            guard let list = jsonData["list"] as? [[String : Any]] else {return}
            let patientList = Mapper<User>().mapArray(JSONArray: list)
            loginSuccess(patientList)
            
        }) { (errorSting) in
            LoginFail(errorSting)
            
        }
        
    }

}
