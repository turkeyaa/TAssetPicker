# TAssetPicker
An integration of Photos which allows you to pick media(image/video) effortlessly, with circular crop supported, and written in Swift

## 效果图

![动图](http://turkeyaa.github.io/assets/2017/TAssetPicker.gif)

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
to 1 and max to 9

```swift
let configu = Configuration.init()
configu.leftTitle = "取消"
configu.rightTitle = "完成"
        
configu.leftImage = UIImage.init(named: "close")
configu.rightImage = UIImage.init(named: "completion")

configu.maxCount = 9  // 可选中图片个数
        
let vc = AssetPickerController.init(configu: configu)
```


## Installation

**TAssetPicker** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TAssetPicker'
```

**TAssetPicker** is also available through [turkeyaa](https://github.com/turkeyaa/TAssetPicker).
To install just write into your Cartfile:

```ruby
github "turkeyaa/TAssetPicker"
```

## Author


## License

**TAssetPicker** is available under the MIT license. See the [LICENSE](https://github.com/turkeyaa/TAssetPicker/blob/master/LICENSE) file for more info.
