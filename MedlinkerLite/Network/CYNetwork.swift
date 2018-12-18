//
//  CYNetwork.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/29.
//  Copyright © 2018 yang cai. All rights reserved.
//
import UIKit
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

class CYNetwork: NSObject {
    typealias successBlock = (_ json: [String: Any]) -> ()
    typealias failBlock = (_ errorMsg: String) -> ()
    
    enum Host {
        case d2d
        case web
        case im
    }
    
    class func request(path: String, parameters: [String: Any]? = nil, method: HTTPMethod = .post, host: Host = .web, success: @escaping successBlock, fail: @escaping failBlock) {
        
        let params = unionParams(parameters: parameters)
        
        var basePath = ""
        switch host {
        case .d2d:
            basePath = kD2DServiceHost
        case .im:
            basePath = kIMServiceHost
        default:
            basePath = kWebServiceBaseURLPath

        }
        
        
        
        Alamofire.request(basePath + path, method: method, parameters: params).responseObject { (response: DataResponse<ResponseData>) in
            response.result.ifSuccess {
                let responseObject = response.result.value
                if let errorCode = responseObject?.errCode, errorCode == 0 {
                    success(responseObject?.data ?? [:])
                } else {
                    fail(responseObject?.errMsg ?? "未知错误")
                }
                }.ifFailure {
                    fail(response.result.error?.localizedDescription ?? "未知错误")
            }
        }
    }

    
//    class func request(path: String, parameters: [String: String], success: @escaping successBlock, fail: @escaping failBlock) {
//
//        let params = unionParams(parameters: parameters)
//
//
//        Alamofire.request(kWebServiceBaseURLPath + path, method: .post, parameters: params).responseObject { (response: DataResponse<ResponseData>) in
//            response.result.ifSuccess {
//                let responseObject = response.result.value
//                if let errorCode = responseObject?.errCode, errorCode == 0 {
//                    success(responseObject?.data ?? [:])
//                } else {
//                    fail(responseObject?.errMsg ?? "未知错误")
//                }
//                }.ifFailure {
//                    fail(response.result.error?.localizedDescription ?? "未知错误")
//            }
//        }
//    }
    
    fileprivate static func unionParams(parameters: [String: Any]?) -> [String : Any] {
        
        //        paramsForWebservice string 网络接口必备参数
        //        sess string 加密的会话id
        
        var mustParams = MLAppInfo.shared.paramsForWebservice
//        var mustParams: [String : String] = [:]

//        if MLLoginUser.shared.session != nil {
//            mustParams["sess"] = MLLoginUser.shared.session!
//        }
        mustParams["sessName"] = Login.user?.session ?? ""
        mustParams["sess"] = Login.user?.sess ?? ""
        
        var unionParams = parameters ?? [String: Any]()
        for (key, value) in mustParams {
            unionParams[key] = value
        }
        return unionParams
    }

}
