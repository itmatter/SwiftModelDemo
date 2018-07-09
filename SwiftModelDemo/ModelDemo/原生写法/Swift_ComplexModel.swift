//
//  Swift_ComplexModel.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class Swift_ComplexModel: NSObject {
    /// 模型数组1
    var modelArr_1: [Swift_ComplexModelOne]?
    /// 模型数组2
    var modelArr_2: [Swift_ComplexModelTwo]?
    /// 请求数据
    var pageInfo: Swift_PageInfoModel?
    /// 职位code
    var positionCode: NSNumber?
    
    
    init(dict: [String: Any]) {
        super.init()
        // KVC赋值
        pageInfo = Swift_PageInfoModel(dict: dict["pageInfo"] as! [String : Any])
        positionCode = dict["positionCode"] as? NSNumber

        let oneDicts = dict["modelArr_1"] as? [[String : Any]]
        let tempArr_1 = NSMutableArray()
        for item in oneDicts! {
            let modelOne = Swift_ComplexModelOne(dict: item)
            tempArr_1.add(modelOne)
        }
        modelArr_1 = tempArr_1 as? [Swift_ComplexModelOne]
        
        
        let twoDicts = dict["modelArr_2"] as? [[String : Any]]
        let tempArr_2 = NSMutableArray()
        for item in twoDicts! {
            let modelOne = Swift_ComplexModelTwo(dict: item)
            tempArr_2.add(modelOne)
        }
        modelArr_2 = tempArr_2 as? [Swift_ComplexModelTwo]

    }
}
