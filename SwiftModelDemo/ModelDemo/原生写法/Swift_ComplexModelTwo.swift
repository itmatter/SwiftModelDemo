//
//  Swift_ComplexModelTwo.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class Swift_ComplexModelTwo: NSObject {
    
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
    
    init(dict: [String: Any]) {
        super.init()
        balance = dict["balance"] as? NSNumber
        birthday = dict["birthday"] as? String
        financialPlannerId = dict["financialPlannerId"] as? NSNumber
        headImgUrl = dict["headImgUrl"] as? String
        historyCommission = dict["historyCommission"] as? NSNumber
        orderDueTag = dict["orderDueTag"] as? NSNumber
        orderDueTodayTag = dict["orderDueTodayTag"] as? NSNumber
        orderTag = dict["orderTag"] as? NSNumber
        sex = dict["sex"] as? NSNumber
        userId = dict["userId"] as? NSNumber
        username = dict["username"] as? String
    }
}
