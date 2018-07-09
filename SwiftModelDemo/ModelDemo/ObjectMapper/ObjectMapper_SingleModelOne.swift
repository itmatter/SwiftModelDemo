//
//  ObjectMapper_SingleModelOne.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit
import ObjectMapper

class ObjectMapper_SingleModelOne: Mappable {
    var height: String?
    var weight: String?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        height  <- map["height"]
        weight  <- map["weight"]
    }
    
}
