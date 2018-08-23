//
//  ViewController.swift
//  SwiftCeshi
//
//  Created by changmacpor on 2018/8/22.
//  Copyright © 2018年 changmacpor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 首页腾讯数据
        
        self.loadData()
                // Do any additional setup after loading the view, typically from a nib.
    }
    func loadData() {
        CXNetworkAlamofire.requestData(type: .get, urlString: "http://c.m.163.com/nc/video/home/0-10.html", succeed: {[unowned self] (result, err) in
            guard let result      = result as? [String: Any] else { return }
            guard let resultVideo = result["videoList"] as? [[String: Any]]  else { return }
            guard let resultSid   = result["videoSidList"] as? [[String: Any]]  else { return }
            
            
        }) { (err) in
            print(err)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

