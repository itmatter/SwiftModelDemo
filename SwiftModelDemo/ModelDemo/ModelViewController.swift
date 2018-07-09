//
//  ModelViewController.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class ModelViewController: UIViewController {

    var data : [String : Any]?

    var swift_singleModel : Swift_SingleModel?
    var swift_ComplexModel : Swift_ComplexModel?
    
    
    var Swift_SingleModel_PlistPath : String?
    var Swift_ComplexModel_PlistPath : String?
    
    
    var objectMapper_SingleModel : ObjectMapper_SingleModel?
    var objectMapper_ComplexModel : ObjectMapper_ComplexModel?


    override func viewDidLoad() {
        super.viewDidLoad()

        


    }

  
    
    @IBAction func readJSONData(_ sender: Any) {
        //读取本地Modle数据
        Swift_SingleModel_PlistPath = Bundle.main.path(forResource: "Swift_SingleModel", ofType: "plist")!
        Swift_ComplexModel_PlistPath = Bundle.main.path(forResource: "Swift_ComplexModel", ofType: "plist")!
        
        let dict : NSDictionary! = NSDictionary(contentsOfFile: Swift_SingleModel_PlistPath!)
        data = dict["data"] as? [String : Any]
        print(data!)
        
    }
    

    @IBAction func createModel(_ sender: Any) {
        //-------------------------------------------------------------
        //Swift_SingleModel
        //-------------------------------------------------------------
//        create_Swift_singleModel()
        
        //-------------------------------------------------------------
        //objectMapper_SingleModel
        //-------------------------------------------------------------
//        create_ObjectMapper_SingleModel()
        create_ObjectMapper_ComplexModel()
    }
    
    
    @IBAction func readModel(_ sender: Any) {
//        print_ObjectMapper_SingleModel()
        print_ObjectMapper_ComplexModel()
    }
}

extension ModelViewController {
    
    
    func create_ObjectMapper_SingleModel(){
        let dict : NSDictionary! = NSDictionary(contentsOfFile: (Bundle.main.path(forResource: "Swift_SingleModel", ofType: "plist")!))
        data = dict["data"] as? [String : Any]
        objectMapper_SingleModel = ObjectMapper_SingleModel(JSON: data!)
    }
    
    func create_ObjectMapper_ComplexModel(){
        let dict : NSDictionary! = NSDictionary(contentsOfFile: (Bundle.main.path(forResource: "Swift_ComplexModel", ofType: "plist")!))
        data = dict["data"] as? [String : Any]
        objectMapper_ComplexModel = ObjectMapper_ComplexModel(JSON: data!)
    }
  
    
    func print_ObjectMapper_SingleModel()  {
        if objectMapper_SingleModel != nil {
            print("objectMapper_SingleModel = \(String(describing: objectMapper_SingleModel))")
            print("name = \(String(describing: objectMapper_SingleModel?.name))")
            print("age = \(String(describing: objectMapper_SingleModel?.age))")
            print("hobby = \(String(describing: objectMapper_SingleModel?.hobby))")
            
            print("friend = \(String(describing: objectMapper_SingleModel?.friend))")
            print("friend.weight = \(String(describing: objectMapper_SingleModel?.friend?.weight))")
            print("friend.height = \(String(describing: objectMapper_SingleModel?.friend?.height))")
        }
    }
    
    
    func print_ObjectMapper_ComplexModel()  {
        if  objectMapper_ComplexModel != nil  {
            print("swift_ComplexModel = \(String(describing: objectMapper_ComplexModel))")
            print("modelArr_1 = \(String(describing: objectMapper_ComplexModel?.modelArr_1))")
            print("modelArr_2 = \(String(describing: objectMapper_ComplexModel?.modelArr_2))")
            print("pageInfo = \(String(describing: objectMapper_ComplexModel?.pageInfo))")
            print("positionCode = \(String(describing: objectMapper_ComplexModel?.positionCode))")
            
            
            print("---------------------------------")
            //打印modelArr_1中元素内容
            print("modelArr_1 count : \(String(describing: objectMapper_ComplexModel?.modelArr_1?.count))")
            if objectMapper_ComplexModel?.modelArr_1?.count != 0 {
                let oneModel : ObjectMapper_ComplexModelOne = (objectMapper_ComplexModel?.modelArr_1?.last)!
                print("oneModel : \(oneModel)")
                
            }
            //打印modelArr_2中元素内容
            print("modelArr_2 count : \(String(describing: objectMapper_ComplexModel?.modelArr_2?.count))")
            if objectMapper_ComplexModel?.modelArr_2?.count != 0 {
                let twoModel : ObjectMapper_ComplexModelTwo = (objectMapper_ComplexModel?.modelArr_2?.last)!
                print("oneModel : \(twoModel)")
                print("balance : \(String(describing: twoModel.balance))")
                print("birthday : \(String(describing: twoModel.birthday))")
                print("financialPlannerId : \(String(describing: twoModel.financialPlannerId))")
                print("headImgUrl : \(String(describing: twoModel.headImgUrl))")
                //.....
            }
        }
    }
    
    
    
    //---------------------------------------------------------------------------------------------------------
    //---------------------------------------------------------------------------------------------------------
    //---------------------------------------------------------------------------------------------------------
    func create_Swift_singleModel() {
        let dict : NSDictionary! = NSDictionary(contentsOfFile: (Bundle.main.path(forResource: "Swift_SingleModel", ofType: "plist")!))
        data = dict["data"] as? [String : Any]
        swift_singleModel = Swift_SingleModel(dict: data!)
    }
    
    func create_Swift_ComplexModel() {
        let dict : NSDictionary! = NSDictionary(contentsOfFile: (Bundle.main.path(forResource: "Swift_ComplexModel", ofType: "plist")!))
        data = dict["data"] as? [String : Any]
        swift_ComplexModel = Swift_ComplexModel(dict: data!)
    }
    
    func print_Swift_singleModel()  {
        if swift_singleModel != nil {
            print("swift_singleModel = \(String(describing: swift_singleModel))")
            print("name = \(String(describing: swift_singleModel?.name))")
            print("age = \(String(describing: swift_singleModel?.age))")
            print("hobby = \(String(describing: swift_singleModel?.hobby))")

            print("friend = \(String(describing: swift_singleModel?.friend))")
            print("friend.weight = \(String(describing: swift_singleModel?.friend?.weight))")
            print("friend.height = \(String(describing: swift_singleModel?.friend?.height))")
        }
    }
    
    func print_Swift_ComplexModel()  {
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



