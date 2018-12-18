//
//  BaseParamModel.swift
//  MedLinker
//
//  Created by zyp on 15/12/31.
//  Copyright © 2015年 MedLinker. All rights reserved.
//

import UIKit
//import AdSupport
let kAppKeyChainServiceName = "net.medlinker.GenericKeychain"
let kAppKeyChainUUID = "UUID"

//import KeychainAccess
//import CryptoSwift


class MLAppInfo: NSObject {
    static var shared = MLAppInfo()

    private var _session: String? = nil
    private var _visitorSession: String? = nil
    private var _sessionName: String? = nil
    /// sys_p ios设备
    let sysp = "i"
    /// sys_v 系统版本
    let sysv = UIDevice.current.systemVersion
    //app版本
    let cliv: String? = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
    
    /// sys_d UUID
//    var sysd: String = {
//        let keychain = Keychain(service: kAppKeyChainServiceName)
//        var uuid = keychain[kAppKeyChainUUID] ?? ""
//        if uuid == ""{
//            let strUUID = UIDevice.current.identifierForVendor?.uuidString ?? ""
//            keychain[kAppKeyChainUUID] = strUUID
//            uuid = strUUID
//        }
//        return uuid
//    }()
    
    var sysd: String = {
        
        return "uuid=12313123123123123"
    }()
    
//        sys_v string 客户端的系统版本(version)
//        sys_p string 手机系统类型(platform)，如果为a，表示android，如果是i，表示ios
//        sys_m string 手机的型号(model)
//        cli_c string 渠道id
//        cli_v string 客户端安装的应用的版本
//        sys_d string 手机设备号
    lazy var paramsForWebservice: [String: Any] = {
        return [
            "sys_p": MLAppInfo.shared.sysp,
            "sys_v": MLAppInfo.shared.sysv,
            "cli_v": MLAppInfo.shared.cliv ?? "",
            "cli_c": "medlinker",
            "sys_m": MLAppInfo.shared.sysm(),
            "sys_d": MLAppInfo.shared.sysd,
        ]
    }()
    
    
//    /// 当前设备是否允许追踪IDFA
//    lazy var advertisingTrackingEnabled: Bool = {
//        return ASIdentifierManager.shared().isAdvertisingTrackingEnabled
//    }()
//    
//    /// 当前设备的IDFA
//    lazy var idfa: String = {
//        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
//    }()
    
    
    //设备型号
    func sysm() -> String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone8,4":                               return "iPhone SE"
        case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
        case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1", "iPad5,2":                      return "iPad Mini 4"
        case "iPad6,3", "iPad6,4":                      return "iPad Pro (9.7 inch)"
        case "iPad6,7", "iPad6,8":                      return "iPad Pro (12.9 inch)"
        case "AppleTV5,3":                              return "Apple TV"
        case "i386", "x86_64":                          return "Simulator"
        default:                                        return identifier
        }
    }
    
   /*
    /// 会话token
//    var session: String?
    
    var session: String? {
        get{
            if _session == nil {
                _session = getSession(key: kAppKeyChainSession)
            }
            return _session
        } set {
            if newValue == nil {
                UserDefaults.standard.set(nil, forKey: kAppKeyChainSession)
            }else {
                _session = newValue
                saveSession(session: newValue, key: kAppKeyChainSession)
            }
        }
    }
    
    /// 游客会话token
    var visitorSession: String? {
        get{
            if _session == nil {
                _session = getSession(key: kAppKeyVisitorChainSession)
            }
            return _session
        } set {
            if newValue == nil {
                UserDefaults.standard.set(nil, forKey: kAppKeyVisitorChainSession)
            }else {
                _session = newValue
                saveSession(session: newValue, key: kAppKeyVisitorChainSession)
            }
        }
    }
    
    
    func saveSession (session: String?, key: String) {
        if let data = session?.data(using: String.Encoding.utf8) {
            do {
                let aes = try AES(key: key, iv: key, blockMode: .ECB, padding: ZeroPadding())
                let dataEncode = try aes.encrypt(data)
                let da = Data(bytes: dataEncode)
                UserDefaults.standard.set(da, forKey: key)
                UserDefaults.standard.synchronize()
            } catch let error {
                Log.debug(error)
            }
        }
    }
    */
//    func getSession (key: String, aesKey: String) -> String? {
//        do {
//            let aes = try AES(key: aesKey, iv: aesKey, padding: .zeroPadding)
//
////            let aes = try AES(key: aesKey, iv: aesKey, blockMode: .ECB, padding: .zeroPadding)
//            let decrypted = try aes.decrypt(Array(key.utf8))
//            let da = Data(bytes: decrypted)
//            let string = String(data: da, encoding: String.Encoding.utf8)
//            return string
//        } catch let error {
//            return ""
//        }
//    }
}
