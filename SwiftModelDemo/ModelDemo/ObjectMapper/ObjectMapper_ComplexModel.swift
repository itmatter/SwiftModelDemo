//
//  ObjectMapper_ComplexModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit
import ObjectMapper

class ObjectMapper_ComplexModel: Mappable {
    /// 模型数组1
    var modelArr_1: [ObjectMapper_ComplexModelOne]?
    /// 模型数组2
    var modelArr_2: [ObjectMapper_ComplexModelTwo]?
    /// 请求数据
    var pageInfo: ObjectMapper_PageInfoModel?
    /// 职位code
    var positionCode: NSNumber?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        modelArr_1  <- map["modelArr_1"]
        modelArr_2  <- map["modelArr_2"]
        pageInfo  <- map["pageInfo"]
        positionCode  <- map["positionCode"]
    }
}
