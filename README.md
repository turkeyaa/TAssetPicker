# TAssetPicker
An integration of Photos which allows you to pick media(image/video) effortlessly, with circular crop supported, and written in Swift

## Picture

![Dynamic graph](http://turkeyaa.github.io/assets/2017/TAssetPicker.jpg)

## Usage

**TAssetPicker** works as a normal controller, just instantiate it and present it.

```swift
let vc = AssetPickerController()
vc.assetResult = { (result) in
	print(result)
}
present(vc, animated: true, completion: nil)
```

### Optional bonus

##### Configuration

You can inject `Configuration` instance to TAssetPicker, which allows you to configure text, colors,image, fonts, supports limiting the amount of images that can be selected, it defaults
to zero, which means that the user can select as many images as he/she wants.

```swift
let configu = Configuration.init()
configu.leftTitle = "取消"
configu.rightTitle = "完成"
        
configu.leftImage = UIImage.init(named: "cancel")
configu.rightImage = UIImage.init(named: "completion")

configu.maxCount = 9  // 可选中图片个数

configu.numberBgColor = UIColor.red     // 数量背景颜色
        
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
