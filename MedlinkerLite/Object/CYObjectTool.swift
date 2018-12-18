//
//  CYObject.swift
//  MedlinkerLite
//
//  Created by yang cai on 2018/11/29.
//  Copyright © 2018 yang cai. All rights reserved.
//

import ObjectMapper

//class CYObjectTool {
//    //将 object 转化为 jsonString
//    class func returnJsonValueOf(_ object: Mappable) -> String {
//        let JSONString = object.toJSONString(prettyPrint: true)
//        return JSONString ?? ""
//    }
//
//    //将 jsonString 转化为 object
//    class func qwe<T:Mappable>(_ JSONString: String, type: T) -> T? {
//
//        let object = T(JSONString: JSONString)
//
//        return object
//    }
//}

//extension Mappable {
//    static func objectFrom(jsonString: String) -> Mappable? {
//        return self.init(JSONString: jsonString)
//    }
//
//    func jsonValue() -> String {
//        let JSONString = self.toJSONString(prettyPrint: true)
//        return JSONString ?? ""
//    }
//
//}
