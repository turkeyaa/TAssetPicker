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
    
    var leftTitle: String = "取消"
    var rightTitle: String = "完成"
    var leftImage: UIImage?
    var rightImage: UIImage?
    
    var numberBgColor: UIColor = UIColor.brown
    var titleColor: UIColor = UIColor.black
    
    var maxCount: Int = 2
    
    public override init() {}
}
