//
//  Swift_SingleModelOne.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class Swift_SingleModelOne: NSObject {
    var height: String?
    var weight: String?
    
    init(dict: [String: Any]) {
        super.init()
        // KVC赋值
        height  = dict["height"]    as? String
        weight  = dict["weight"]    as? String
    }
}
