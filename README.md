# TAssetPicker
An integration of Photos which allows you to pick media(image/video) effortlessly, with circular crop supported, and written in Swift

## Picture

![Dynamic graph](Resource/asset.png)

## Usage

**TAssetPicker** works as a normal controller, just instantiate it and present it.

```swift
let vc = AssetPickerController()
vc.assetResult = { (result: [UIImage]) in
	print(result)   // UIImage 数组对象
}
vc.errorResult = { (index: Int) in
	if index == 0 {
		print("只能选择\(configu.maxCount)张图片")
	}
}
present(vc, animated: true, completion: nil)
```

### Optional bonus

##### Configuration

You can inject `Configuration` instance to TAssetPicker, which allows you to configure text, colors,image, fonts, supports limiting the amount of images that can be selected, it defaults
to zero, which means that the user can select as many images as he/she wants.

```swift
/// 自定义导航栏标题
let configu = AssetConfiguration.init()
configu.leftTitle = "取消"
configu.rightTitle = "完成"
        
/// 自定义导航栏图标
configu.leftImage = UIImage.init(named: "d_close")
configu.rightImage = UIImage.init(named: "d_complete")

/// 选择 or 反选图片占位符
configu.selectImage = UIImage.init(named: "select")
configu.deselectImage = UIImage.init(named: "deselect")

/// 可选中图片最大数
configu.maxCount = 9  

/// 背景颜色
configu.numberBgColor = UIColor.red     
        
let vc = AssetPickerController.init(configu: configu)
```


## Installation

**TAssetPicker** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TAssetPicker'
```

**TAssetPicker** is also available through [turkeyaa](https://github.com/turkeyaa/TAssetPicker). manually: drag 'Classes' in TAssetPicker/Classes to your project, make sure to check `copy items if needed`

## Requirements

iOS 8.0

## Contribution

* Issue me, or send it to `18668089860@163.com`
* Fork and send pull request

## Author

Wenhua Yu, 18668089860@163.com


## License

**TAssetPicker** is available under the MIT license. See the [LICENSE](https://github.com/turkeyaa/TAssetPicker/blob/master/LICENSE) file for more info.
