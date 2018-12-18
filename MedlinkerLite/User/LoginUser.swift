//
//  MLLoginUser.swift
//  MedLinker
//
//  Created by zyp on 2016/9/24.
//  Copyright © 2016年 MedLinker. All rights reserved.
//

import UIKit
import ObjectMapper

class Login {
    
//    static var shared: LoginUser = {
//        var loginUser = LoginUser()
//        return loginUser
//    }()
    
    static var user: User? = {
        
//        UserDefaults.standard.set(userJsonString, forKey: "userJsonString")
        let userJsonString = UserDefaults.standard.string(forKey: "userJsonString") ?? ""
        var loginUser = User(JSONString: userJsonString)
        return loginUser
    }()

    
    
}
