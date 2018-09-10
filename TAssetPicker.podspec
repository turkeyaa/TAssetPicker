#
#  Be sure to run `pod spec lint AssetPicker.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "TAssetPicker"
  s.version      = "1.0.5"
  s.ios.deployment_target = "9.0"
  s.platform     = :ios, '9.0'
  s.summary      = "Photos for swift"
  s.description  = <<-DESC
  An integration of  Photos.framework which allows you to pick image effortlessly, with circular crop supported, and written in Swift
                   DESC
  s.homepage     = "https://github.com/turkeyaa/TAssetPicker"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "turkeyaa" => "18668089860@163.com" }
  s.source       = { :git => "https://github.com/turkeyaa/TAssetPicker.git", :tag => s.version.to_s }
  s.source_files = "TAssetPicker/**/*.{swift}"
  
#  不推荐，名称冲突
#  s.resources    = ['TAssetPicker/Resource/*.{png}']
#  s.resources    = "TAssetPicker/Resource/TAssetPicker.bundle"

#    推荐方式
  s.resource_bundles = {
#      'TAssetPicker' => ['TAssetPicker/Resource/TAssetPicker.bundle']
    'TAssetPicker' => ['TAssetPicker/Resource/*.{png}']
  }
  s.requires_arc = true
  s.frameworks = 'UIKit', 'Foundation'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
