#
#  Be sure to run `pod spec lint AssetPicker.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "TAssetPicker"
  s.version      = "0.0.6"
  s.ios.deployment_target = "8.0"
  s.platform     = :ios, '8.0'
  s.summary      = "Photos for swift"
  s.description  = <<-DESC
  An integration of  Photos.framework which allows you to pick image effortlessly, with circular crop supported, and written in Swift
                   DESC
  s.homepage     = "https://github.com/turkeyaa/TAssetPicker"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "turkeyaa" => "18668089860@163.com" }
  s.source       = { :git => "https://github.com/turkeyaa/TAssetPicker.git", :tag => s.version.to_s }
  s.source_files  = "Classes/**/*.{swift}"
  s.resource_bundles = { 'TAssetPicker' => ['Images/*.{png}'] }
  s.requires_arc = true
  s.frameworks = 'UIKit', 'Foundation'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
  #s.dependency 'SnapKit'

end
