//
//  ViewController.swift
//  SwiftModelDemo
//
//  Created by liliguang on 2018/7/9.
//  Copyright © 2018年 liliguang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addButtton()
    }


}

extension ViewController {
    func addButtton()  {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        button.center = self.view.center
        button.setTitle("TestBtn", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.red
        button.addTarget(self, action: Selector.buttonClick, for: .touchUpInside)
        self.view.addSubview(button)
    }
    
    
    @objc func buttonClick()  {
        
        self.navigationController?.pushViewController(ModelViewController(), animated: true)
    }
}

private extension Selector {
    static let buttonClick = #selector(ViewController.buttonClick)
}
