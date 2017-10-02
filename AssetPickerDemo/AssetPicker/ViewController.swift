//
//  ViewController.swift
//  AssetPicker
//
//  Created by yuwenhua on 2017/9/23.
//  Copyright © 2017年 DS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var showBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showBtn = UIButton.init(type: .custom)
        showBtn?.setTitle("Asset picker", for: .normal)
        showBtn?.setTitleColor(UIColor.red, for: .normal)
        showBtn?.frame = CGRect.init(x: 10, y: 100, width: Device_width-20, height: 40)
        showBtn?.addTarget(self, action: #selector(showEvent), for: .touchUpInside)
        view.addSubview(showBtn!)
    }
    
    @objc func showEvent() -> Void {
        
//        let configu = Configuration()
//        configu.leftTitle = "取消"
//        configu.rightTitle = "完成"
        
//        let vc = AssetPickerController.init(configu: configu)
        
        let vc = AssetPickerController()
        vc.assetResult = { (result) in
            print(result)
        }
        present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

