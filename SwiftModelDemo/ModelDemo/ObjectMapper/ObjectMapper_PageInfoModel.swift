//
//  ObjectMapper_PageInfoModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit
import ObjectMapper

class ObjectMapper_PageInfoModel: Mappable {
    var currentPage : NSNumber?
    var currentResult : NSNumber?
    var data : NSDictionary?
    var pageSize : NSNumber?
    var totalPage : NSNumber?
    var totalResult : NSNumber?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        currentPage  <- map["currentPage"]
        currentResult  <- map["currentResult"]
        data  <- map["data"]
        pageSize  <- map["pageSize"]
        totalPage  <- map["totalPage"]
        totalResult  <- map["totalResult"]
    }
}
