//
//  TopView.swift
//  TemplateSwift
//
//  Created by yuwenhua on 2017/10/2.
//  Copyright © 2017年 DS. All rights reserved.
//

import Foundation
import UIKit

class TopView: UIView {
    
    var closeBack: AssetResultBack?
    var completionBack: AssetResultBack?
    
    lazy var closeBtn: UIButton = {
        let button = UIButton.init(type: UIButtonType.custom)
        button.setImage(UIImage.init(named: "close"), for: .normal)
        button.addTarget(self, action: #selector(closeEvent), for: .touchUpInside)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.frame = CGRect.init(x: 10, y: 10, width: 30, height: 30)
        return button
    }()
    lazy var titleLabel: UILabel = {
        let label = UILabel.init()
        label.text = "全部照片"
        label.textAlignment = .center
        label.textColor = UIColor.lightGray
        label.frame = CGRect.init(x: 50, y: 10, width: Device_width-100, height: 30)
        return label
    }()
    lazy var numberLabel: UILabel = {
        let label = UILabel.init()
        label.textAlignment = .center
        label.textColor = UIColor.lightGray
        label.layer.cornerRadius = 15.0
        label.backgroundColor = UIColor.brown
        label.clipsToBounds = true
        label.textColor = UIColor.white
        label.isHidden = true
        label.frame = CGRect.init(x: Device_width-80, y: 10, width: 30, height: 30)
        return label
    }()
    lazy var compBtn: UIButton = {
        let button = UIButton.init(type: UIButtonType.custom)
        button.setImage(UIImage.init(named: "completion"), for: .normal)
        button.addTarget(self, action: #selector(completionEvent), for: .touchUpInside)
        button.setTitleColor(UIColor.lightGray, for: .normal)
        button.frame = CGRect.init(x: Device_width-50, y: 10, width: 30, height: 30)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(closeBtn)
        addSubview(titleLabel)
        addSubview(numberLabel)
        addSubview(compBtn)
    }
    
    @objc func closeEvent() -> Void {
        if ((closeBack) != nil) {
            closeBack!()
        }
    }
    @objc func completionEvent() -> Void {
        if ((completionBack) != nil) {
            completionBack!()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
