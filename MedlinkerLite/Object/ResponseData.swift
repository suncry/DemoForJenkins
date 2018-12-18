//
//  ResponseData.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/30.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class ResponseData: Mappable {
    var data: [String: Any]?
    var errCode: Int?
    var errMsg: String?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        data        <- map["data"]
        errCode     <- map["errcode"]
        errMsg      <- map["errmsg"]
    }

}
