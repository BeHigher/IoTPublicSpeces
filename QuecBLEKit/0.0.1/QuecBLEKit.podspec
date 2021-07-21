#
#  Be sure to run `pod spec lint QuecBLEKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "QuecBLEKit"
  spec.version      = "0.0.1"
  spec.summary      = "QuecBLEKit is BLE Channel"

  spec.homepage     = "https://eip.quectel.com"

  spec.license      = "none"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "quectel.steven" => "steven.xia@quectel.com" }
  spec.ios.deployment_target = "10.0"

  spec.static_framework = true

  spec.source       = { :http => "https://quec-saas-aep.oss-cn-shanghai.aliyuncs.com/sdk_test/#{spec.name}-#{spec.version}.zip", :type => "zip" }
  
  spec.ios.vendored_frameworks = "QuecBLEKit/QuecBLEKit.framework"
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  spec.frameworks = 'Foundation'
  

end
