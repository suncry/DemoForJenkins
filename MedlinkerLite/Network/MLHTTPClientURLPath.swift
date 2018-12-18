//
//  MLHTTPClientURLPath.swift
//  MedLinker
//
//  Created by Angel on 2017/2/9.
//  Copyright © 2017年 medlinker. All rights reserved.
//

//MARK: 线上业务地址
var kWebServiceHost = MLConfiguration.kWebServiceHosts[MLConfiguration.mlHTTPType.rawValue]

var kD2DServiceHost = MLConfiguration.kD2DServicehosts[MLConfiguration.mlHTTPType.rawValue]

var kPhServiceHost = MLConfiguration.kPhServicehosts[MLConfiguration.mlHTTPType.rawValue]


var kWebServiceBaseURLPath = kWebServiceHost + "/rest/v1"

//MARK: H5地址
var kH5ServiceHost = MLConfiguration.kH5ServiceHosts[MLConfiguration.mlHTTPType.rawValue]

//MARK: 资讯接口地址
var kInformationHost = MLConfiguration.kInformationHosts[MLConfiguration.mlHTTPType.rawValue]

//MARK: 统计接口地址
var kWebServiceStatisticsURLPath = MLConfiguration.kWebServiceStatisticsURLPaths[MLConfiguration.mlHTTPType.rawValue]

//MARK: - 医联图片上传
var kImageUploadHost = MLConfiguration.kMLImageUploadHosts[MLConfiguration.mlHTTPType.rawValue]
let kImageUploadPath = "/rest/v1/certifications/images/upload"

//MARK: - 环境切换、更新提示接口地址
let kWebLaunchCheck = MLConfiguration.kWebLaunchCheck[MLConfiguration.mlHTTPType.rawValue]

//MARK: - 支付地址
var kPayBaseUrl = MLConfiguration.kPayServiceHosts[MLConfiguration.mlHTTPType.rawValue]

//MARK: - 分享相关地址
let kDefaultHeaderImage = "http://pub-med-avatar.imgs.medlinker.net/male.png"
let kDefaultHeaderImageName = "user_male_default_avatar"   //user_male_default_avatar
let kDefaultIconImage = "http://7xp8ui.com2.z0.glb.qiniucdn.com/logo2x.png"

//MARK: - IM相关地址
let kIMGateHost = MLConfiguration.kIMGateHosts[MLConfiguration.mlHTTPType.rawValue]
let kIMServiceHost = MLConfiguration.kIMHosts[MLConfiguration.mlHTTPType.rawValue]

//MARK: - passport相关地址
let kPassportServiceHost = MLConfiguration.kPassportHosts[MLConfiguration.mlHTTPType.rawValue]
