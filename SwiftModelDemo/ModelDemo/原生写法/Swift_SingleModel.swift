//
//  Swift_SingleModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class Swift_SingleModel: NSObject {
    /// 姓名
    var name: String?
    /// 年龄
    var age: String?
    /// 爱好
    var hobby: [String]?
    /// 自定义对象
    var friend: Swift_SingleModelOne?
    
    
    init(dict: [String: Any]) {
        super.init()
        // KVC赋值
        name    = dict["name"]      as? String
        age     = dict["age"]       as? String
        hobby   = dict["hobby"]     as? [String]
        friend  = Swift_SingleModelOne(dict: (dict["friend"] as? [String: Any])!)
    }
}
