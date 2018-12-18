//
//  UserModel.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/30.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class UserModel: CYModel {

    typealias loginSuccess = () -> ()
    typealias LoginFail = (_ errorMsg: String) -> ()

    class func login(account: String, password: String, loginSuccess: @escaping loginSuccess, LoginFail: @escaping LoginFail) {
        let params: [String : String] = [
            "username": account,
            "password": password
        ]
        
        CYNetwork.request(path: MLConstant.webServicePath.login, parameters: params, success: { (jsonData) in
            print(jsonData)
            guard let session = jsonData["sessName"] as? String else {return}
            guard let sess = jsonData["sess"] as? String else {return}
            guard let userDic = jsonData["user"] as? [String : Any] else {return}
            guard let user = Mapper<User>().map(JSON: userDic) else {return}
            Login.user = user
            Login.user?.session = session
            Login.user?.sess = sess

            let userJsonString = Login.user?.toJSONString() ?? ""
            UserDefaults.standard.set(userJsonString, forKey: "userJsonString")
            
            
            loginSuccess()
        }, fail: { (errorSting) in
            LoginFail(errorSting)
        })

    }
}
