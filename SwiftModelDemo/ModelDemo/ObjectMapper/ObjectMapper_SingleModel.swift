//
//  ObjectMapper_SingleModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit
import ObjectMapper

class ObjectMapper_SingleModel: Mappable {
    /// 姓名
    var name: String?
    /// 年龄
    var age: String?
    /// 爱好
    var hobby: [String]?
    /// 自定义对象
    var friend: ObjectMapper_SingleModelOne?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        name    <- map["name"]
        age     <- map["age"]
        hobby   <- map["hobby"]
        friend  <- map["friend"]
    }
}
