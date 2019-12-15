//
//  ViewController.swift
//  MyBuckSample-iOS
//
//  Created by iossocket on 2019/12/14.
//  Copyright © 2019 iossocket. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        let helloLabel = UILabel.init(frame: CGRect(x: 62, y: 180, width: 300, height: 32))
        helloLabel.text = "Hello World"        
        view.addSubview(helloLabel)
    }
}

