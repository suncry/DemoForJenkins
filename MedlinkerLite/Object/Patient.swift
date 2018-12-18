//
//  Patient.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/29.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class Patient: Mappable {
    var username: String?
    var age: Int?
    var weight: Double!
    var array: [Any]?
    var dictionary: [String : Any] = [:]
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        username    <- map["username"]
        age         <- map["age"]
        weight      <- map["weight"]
        array       <- map["arr"]
        dictionary  <- map["dict"]
    }

}
