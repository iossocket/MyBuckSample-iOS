//
//  ViewController.swift
//  MyBuckSample-iOS
//
//  Created by iossocket on 2019/12/14.
//  Copyright © 2019 iossocket. All rights reserved.
//

import UIKit
import Alamofire
import ObjcLib
import xlog
import RNContainer

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        let helloLabel = UILabel.init(frame: CGRect(x: 62, y: 180, width: 300, height: 32))
        helloLabel.text = "Hello World"        
        view.addSubview(helloLabel)
        
        let ocLabel = OCLabel().generate(byText: "OC Label")!
        ocLabel.frame = CGRect(x: 62, y: 300, width: 200, height: 44)
        view.addSubview(ocLabel)

        MarsXLogger.sharedInstance()?.info("Hi", msg:"HiHi")
        
        let urlStr = "http://onapp.yahibo.top/public/?s=api/test/list"
        AF.request(URL(string: urlStr)!).responseJSON { (response) in
            switch response.result {
            case .success(let json):
                guard let dict = json as? Dictionary<String, Any> else {
                    return
                }
                guard let innderDict = dict["data"] as? Dictionary<String, Any> else {
                    return
                }
                guard let arr = innderDict["list"] as? Array<Any> else {
                    return
                }
                print(arr)
                helloLabel.text = "Hello World: \(arr.count)"
                break
            case .failure(let error):
                helloLabel.text = "Hello World: error"
                print("error:\(error)")
                break
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = RNContainer().viewController(byRoute: "App")
        present(vc, animated: true, completion: nil)
    }
}
