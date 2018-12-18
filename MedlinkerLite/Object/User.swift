//
//  User.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/30.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

class User: Mappable {
    var userId: Int = 0
    var type: Int = 0
    var sectionId: Int = 0
    var sectionGroupId: Int = 0
    var sectionGroupName: String = ""
    var session: String = ""
    var sess: String = ""

    //患者属性
    var name: String = ""
    var birthday: Date?
    var gender: Int = 0
    var insertTime: Int64 = 0
    var phone: String = ""
    var avatar: String = ""
    var description: String = ""
    var accepted: Int = 0
    var genderText: String = "男nt"
    var age: Int = 0

    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        userId            <- map["userId"]
        type              <- map["type"]
        sectionId         <- map["sectionId"]
        sectionGroupId    <- map["sectionGroupId"]
        sectionGroupName  <- map["sectionGroupName"]
        session           <- map["session"]
        
        name              <- map["name"]
        birthday          <- map["birthday"]
        gender            <- map["gender"]
        insertTime        <- map["insertTime"]
        phone             <- map["phone"]
        avatar            <- map["avatar"]
        description       <- map["description"]
        accepted          <- map["accepted"]
        genderText        <- map["genderText"]
        age               <- map["age"]

    }

}
