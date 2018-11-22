//
//  ViewController.swift
//  testRealm
//
//  Created by fengdongkai on 2018/11/22.
//  Copyright © 2018年 fengdongkai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let model = Model.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        model.addObserver(self, forKeyPath: "age", options: .new, context: nil)
    }
    
    deinit {
        model.removeObserver(self, forKeyPath: "age")
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("touch")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        model.age = 28
    }
    
}

