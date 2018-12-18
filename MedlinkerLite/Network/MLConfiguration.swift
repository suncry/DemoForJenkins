//
//  MLConfiguration.swift
//  MedLinker
//
//  Created by Angel on 2017/2/7.
//  Copyright © 2017年 medlinker. All rights reserved.
//
//
//                       _oo0oo_
//                      o8888888o
//                      88" . "88
//                      (| -_- |)
//                      0\  =  /0
//                    ___/`---'\___
//                  .' \\|     |// '.
//                 / \\|||  :  |||// \
//                / _||||| -:- |||||- \
//               |   | \\\  -  /// |   |
//               | \_|  ''\---/''  |_/ |
//               \  .-\__  '-'  ___/-. /
//             ___'. .'  /--.--\  `. .'___
//          ."" '<  `.___\_<|>_/___.' >' "".
//         | | :  `- \`.;`\ _ /`;.`/ - ` : | |
//         \  \ `_.   \_ __\ /__ _/   .-` /  /
//     =====`-.____`.___ \_____/___.-`___.-'=====
//                       `=---='


import UIKit

enum MLHTTPBaseURLType: Int {
    /// 正式
    case product
    /// qa环境
    case qa
    /// dev环境
    case dev
    /// sandbox预发布环境
    case sandbox
}

let SERVER = 3

class MLConfiguration: NSObject {

    /// 是否关闭隐藏入口
    static var hideSecretVCEntrance: Bool {
        return true
    }

//    private static var _httpTypeFromUserDefault: MLHTTPBaseURLType? = {
//        if UserDefaults.standard.object(forKey: MLConstant.userDefaultKey.envKey) == nil {
//            return .qa
//        } else {
//            let userDefaultTypeInt = UserDefaults.standard.integer(forKey: MLConstant.userDefaultKey.envKey)
//            return MLHTTPBaseURLType(rawValue: userDefaultTypeInt)
//        }
//    }()

    /********** 打包的时需要根据情况修改else中类型 ***********/
    static var mlHTTPType: MLHTTPBaseURLType { // 取消了原来到user default中获取环境参数的步骤
        get {
            #if DEBUG // ****** 我是开发的时候设置环境 ******
                return .product
            #else     // ****** 我是打包的时候设置环境 ******
                return isSandbox ? MLHTTPBaseURLType.sandbox : .qa
            #endif
        }
    }

    static var isSandbox: Bool = false

    static let kWebServiceHosts = ["https://app.medlinker.com",
                                   "http://app.qa.medlinker.com",
                                   "http://app.dev.pdt5.medlinker.net",
                                   "http://app.sandbox.medlinker.com"]

    static let kD2DServicehosts = ["https://ylt.medlinker.com",
                                   "http://qa-d2d.medlinker.com",
                                   "http://ylt.medlinker.com",
                                   "http://ylt.medlinker.com"]

    static let kPhServicehosts = ["https://ph.medlinker.com",
                                 "http://ph.qa.medlinker.com",
                                 "https://ph.medlinker.com",
                                 "https://ph.medlinker.com"]

    static let kH5ServiceHosts = ["https://web.medlinker.com",
                                  "http://web.qa.medlinker.com",
                                  "http://web.dev.pdt5.medlinker.net",
                                  "http://web.sandbox.medlinker.com"]

    static let kInformationHosts = ["http://svr.cms.medlinker.com/news_api",
                                    "http://svr.cms.pdt5.medlinker.com",
                                    "http://175.25.26.36:8080",
                                    "http://svr.cms.medlinker.com/news_api"]

    static let kWebServiceStatisticsURLPaths = ["http://data.medlinker.com/v5/collect",
                                                "http://data.test.pdt5.medlinker.net/v5/collect",
                                                "http://data.test.pdt5.medlinker.net/v5/collect",
                                                "http://data.test.pdt5.medlinker.net/v5/collect"]

    static let ServerGateHosts = ["msg.medlinker.com",
                                  "msg.qa.medlinker.com",
                                  "218.244.136.85",
                                  "msg.bi.pdt5.medlinker.com"]

    static let ServerGatePorts = [3014,
                                  3013,
                                  3014,
                                  3013]


    static let kPayServiceHosts = ["http://pay.medlinker.com",
                                   "https://qa-pay.medlinker.com",
                                   "http://pay.dev.pdt5.medlinker.net",
                                   "https://qa-pay.medlinker.com",]

    static let kWebLaunchCheck = ["http://upgrade.medlinker.com/version",
                                  "http://upgrade.qa.medlinker.com/version",
                                  "http://upgrade.qa.medlinker.com/version",
                                  "http://upgrade.qa.medlinker.com/version"]


    static let kMLImageUploadHosts = ["http://idcard.medlinker.com",
                                      "http://114.55.3.97:9988",
                                      "http://114.55.3.97:9988",
                                      "http://114.55.3.97:9988",]

    static let kCookieDomian = [".medlinker.com",
                                ".medlinker.com",
                                ".dev.pdt5.medlinker.net",
                                ".medlinker.com"]

    static let kIMGateHosts = ["https://im-gateway.medlinker.com",
                               "http://114.55.3.97:8123",
                               "http://114.55.3.97:8123",
                               "http://114.55.3.97:8123"]

    static let kIMHosts = ["https://im-api.medlinker.com",
                           "http://120.26.166.35:8000",
                           "http://120.26.166.35:8000",
                           "http://120.26.166.35:8000"]
    
    static let kPassportHosts = ["https://passport.medlinker.com",
                           "http://passport.qa.medlinker.com",
                           "http://passport.dev.pdt5.medlinker.net",
                           "http://passport.dev.pdt5.medlinker.net"]

    static var liveAccountType: String {
        get {
            return mlHTTPType == .product ? MLConfiguration.Live.Production.accountType : MLConfiguration.Live.Development.accountType
        }
    }

    static var liveAppID: String {
        get {
            return mlHTTPType == .product ? MLConfiguration.Live.Production.appID : MLConfiguration.Live.Development.appID
        }
    }

    #if !DEBUG
//    static var bugTagsKey: String {
//        get {
//            return mlHTTPType == .product ? BugTags.Production.key : BugTags.Development.key
//        }
//    }

    //BugTags调出方式，None为静默统计
//    static var bugTagsInnvocationEvent: BTGInvocationEvent {
//        get {
//            return mlHTTPType == .product ? BugTags.Production.innvocationEvent : BugTags.Development.innvocationEvent
//        }
//    }
    #endif

}

// MARK: - Live
extension MLConfiguration {

    struct Live {

        struct Production {
            static let accountType = "5836"
            static let appID = "1400011058"
        }
        struct Development {
            static let accountType = "5208"
            static let appID = "1400009795"
        }
    }
}

// MARK: - Umeng
extension MLConfiguration {

    struct Umeng {

        static let appKey = "54253298fd98c59479000359"
    }
}

//MARK: - BugTags
#if !DEBUG
extension MLConfiguration {

//    struct BugTags {
//
//        struct Production {
//            static let key: String = "d82e2751824ad9215774de94a8d10f13"
//            static let innvocationEvent: BTGInvocationEvent = BTGInvocationEventNone
//        }
//        struct Development {
//            static let key: String = "d8edb300ee6691978f3748073b6a40f1"
//            static let innvocationEvent: BTGInvocationEvent = BTGInvocationEventShake
//        }
//    }
}
#endif
// MARK: - GeTui
extension MLConfiguration {

    struct GeTui {
        struct Production {
            static let kGtAppId:String = "6SCzm2e56BAuN7B8STIxF4"
            static let kGtAppKey:String = "apOyrRezR58FusuAmtY638"
            static let kGtAppSecret:String = "PCQyKKcUQu7AaSKdojoDD7"
        }
        struct Development {
            static let kGtAppId:String = "iav63gJVAy8InyoTgLKBD1"
            static let kGtAppKey:String = "pUos3ATg4D7N7pdeFWNbW"
            static let kGtAppSecret:String = "d0n1RT4Jov97qfQ8X0NIY4"
        }
    }
}

// MARK: - ThirdPlatform
extension MLConfiguration {

    struct ThirdPlatform {
        struct QQ {
            static let appKey = "1103280441"
        }
        struct WeiChat {
            static let appKey = "wxc142816db6a97de9"
            static let appSecret = "0f0c7477c9166e07dd66c95518b17ae4"
        }
        struct Sina {
            static let appKey = "102051425"
            static let redirectURL = "http://sns.whalecloud.com/sina2/callback"
            static let textLimit = 140
        }
    }
}
