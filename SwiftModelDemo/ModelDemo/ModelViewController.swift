//
//  ModelViewController.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class ModelViewController: UIViewController {

    
    var swift_singleModelOne : Swift_SingleModelOne?
    var swift_ComplexModel : Swift_ComplexModel?
    var data : [String : Any]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        


    }

  
    
    @IBAction func readJSONData(_ sender: Any) {
        //读取本地Modle数据
        
        let Swift_SingleModel_PlistPath = Bundle.main.path(forResource: "Swift_SingleModel", ofType: "plist")!
        
        let Swift_ComplexModel_PlistPath = Bundle.main.path(forResource: "Swift_ComplexModel", ofType: "plist")!

        
        let dict : NSDictionary! = NSDictionary(contentsOfFile: Swift_ComplexModel_PlistPath)
        data = dict["data"] as? [String : Any]
        print(data!)
        
    }
    

    @IBAction func createModel(_ sender: Any) {
        if data == nil {
            self.readJSONData(sender)
        }
        print(data!)
        swift_ComplexModel = Swift_ComplexModel(dict: data!)
    }
    
    
    @IBAction func readModel(_ sender: Any) {
        if swift_singleModelOne != nil {
            print("swift_singleModelOne = \(String(describing: swift_singleModelOne))")
            print("name = \(String(describing: swift_singleModelOne?.name))")
            print("age = \(String(describing: swift_singleModelOne?.age))")
            print("hobby = \(String(describing: swift_singleModelOne?.hobby))")
            
            print("friend = \(String(describing: swift_singleModelOne?.friend))")
            print("friend.weight = \(String(describing: swift_singleModelOne?.friend?.weight))")
            print("friend.height = \(String(describing: swift_singleModelOne?.friend?.height))")
        }
        
        if  swift_ComplexModel != nil  {
            print("swift_ComplexModel = \(String(describing: swift_ComplexModel))")
            print("modelArr_1 = \(String(describing: swift_ComplexModel?.modelArr_1))")
            print("modelArr_2 = \(String(describing: swift_ComplexModel?.modelArr_2))")
            print("pageInfo = \(String(describing: swift_ComplexModel?.pageInfo))")
            print("positionCode = \(String(describing: swift_ComplexModel?.positionCode))")

            
            print("---------------------------------")
            //打印modelArr_1中元素内容
            print("modelArr_1 count : \(String(describing: swift_ComplexModel?.modelArr_1?.count))")
            if swift_ComplexModel?.modelArr_1?.count != 0 {
                let oneModel : Swift_ComplexModelOne = (swift_ComplexModel?.modelArr_1?.last)!
                print("oneModel : \(oneModel)")

            }
            //打印modelArr_2中元素内容
            print("modelArr_2 count : \(String(describing: swift_ComplexModel?.modelArr_2?.count))")
            if swift_ComplexModel?.modelArr_2?.count != 0 {
                let twoModel : Swift_ComplexModelTwo = (swift_ComplexModel?.modelArr_2?.last)!
                print("oneModel : \(twoModel)")
                print("balance : \(String(describing: twoModel.balance))")
                print("birthday : \(String(describing: twoModel.birthday))")
                print("financialPlannerId : \(String(describing: twoModel.financialPlannerId))")
                print("headImgUrl : \(String(describing: twoModel.headImgUrl))")
                //.....
            }
        }


    }
}



