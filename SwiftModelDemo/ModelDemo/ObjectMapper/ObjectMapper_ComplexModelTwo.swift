//
//  ObjectMapper_ComplexModelTwo.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit
import ObjectMapper

class ObjectMapper_ComplexModelTwo: Mappable {
    var balance : NSNumber?
    var birthday : String?
    var financialPlannerId : NSNumber?
    var headImgUrl : String?
    var historyCommission : NSNumber?
    var orderDueTag : NSNumber?
    var orderDueTodayTag : NSNumber?
    var orderTag : NSNumber?
    var sex : NSNumber?
    var userId : NSNumber?
    var username : String?
    
    required init?(map: Map) {
        
    }
    
    // Mappable
    func mapping(map: Map) {
        balance  <- map["balance"]
        birthday  <- map["birthday"]
        financialPlannerId  <- map["financialPlannerId"]
        headImgUrl  <- map["headImgUrl"]
        historyCommission  <- map["historyCommission"]
        orderDueTag  <- map["orderDueTag"]
        orderDueTodayTag  <- map["orderDueTodayTag"]
        orderTag  <- map["orderTag"]
        sex  <- map["sex"]
        userId  <- map["userId"]
        username  <- map["username"]
    }
}
