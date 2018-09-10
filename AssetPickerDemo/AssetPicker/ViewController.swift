//
//  ViewController.swift
//  AssetPicker
//
//  Created by yuwenhua on 2017/9/23.
//  Copyright © 2017年 DS. All rights reserved.
//

import UIKit
import TAssetPicker

class ViewController: UIViewController {
    
    var showBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showBtn = UIButton.init(type: .custom)
        showBtn?.setTitle("Asset picker", for: .normal)
        showBtn?.setTitleColor(UIColor.red, for: .normal)
        showBtn?.frame = CGRect.init(x: 10, y: 100, width: self.view.frame.size.width-20, height: 40)
        showBtn?.addTarget(self, action: #selector(showEvent), for: .touchUpInside)
        view.addSubview(showBtn!)
    }
    
    @objc func showEvent() -> Void {
        
        /// 导航栏标题
        let configu = AssetConfiguration.init()
        configu.leftTitle = "取消"
        configu.rightTitle = "完成"
        
        /// 导航栏图标
        configu.leftImage = UIImage.init(named: "d_close")
        configu.rightImage = UIImage.init(named: "d_complete")
        
        /// 选择 or 反选图片，必须
        configu.selectImage = UIImage.init(named: "select")
        configu.deselectImage = UIImage.init(named: "deselect")
        
        configu.maxCount = 2    // 最大可选中图片数量
        
        configu.numberBgColor = UIColor.orange     // 数量背景颜色
        
        let vc = AssetPickerController.init(configu: configu)
        
        vc.assetResult = { (result: [UIImage]) in
            print(result)   // UIImage 数组对象
        }
        vc.errorResult = { (index: Int) in
            if index == 0 {
                print("只能选择\(configu.maxCount)张图片")
            }
        }
        present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

