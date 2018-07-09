//
//  Swift_PageInfoModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class Swift_PageInfoModel: NSObject {
    var currentPage : NSNumber?
    var currentResult : NSNumber?
    var data : NSDictionary?
    var pageSize : NSNumber?
    var totalPage : NSNumber?
    var totalResult : NSNumber?
    
    init(dict: [String: Any]) {
        super.init()
        
        currentPage = dict["currentPage"] as? NSNumber
        currentResult = dict["currentResult"] as? NSNumber
        data = dict["data"] as? NSDictionary
        pageSize = dict["pageSize"] as? NSNumber
        pageSize = dict["pageSize"] as? NSNumber
        totalResult = dict["totalResult"] as? NSNumber
        
    }
}
