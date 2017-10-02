//
//  Configuration.swift
//  AssetPicker
//
//  Created by yuwenhua on 2017/10/2.
//  Copyright © 2017年 DS. All rights reserved.
//

import Foundation
import UIKit

class Configuration: NSObject {
    
    let leftTitle: String = "关闭"
    let rightTitle: String = "完成"
    let leftImage: UIImage = UIImage.init(named: "close")!
    let rightImage: UIImage = UIImage.init(named: "completion")!
    
    
    public override init() {}
}
