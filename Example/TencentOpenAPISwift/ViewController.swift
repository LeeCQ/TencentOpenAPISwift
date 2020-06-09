//
//  ViewController.swift
//  TencentOpenAPISwift
//
//  Created by 李昌庆 on 06/09/2020.
//  Copyright (c) 2020 李昌庆. All rights reserved.
//

import UIKit
import TencentOpenAPISwift
class ViewController: UIViewController, TencentSessionDelegate {
    func tencentDidLogin() {
        
    }
    
    func tencentDidNotLogin(_ cancelled: Bool) {
        
    }
    
    func tencentDidNotNetWork() {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TencentOAuth.init(appId: "", andDelegate: self)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

