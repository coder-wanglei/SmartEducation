#
# Be sure to run `pod lib lint SmartEducation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SmartEducation' #名称
  s.version          = '1.0.0'  #版本号
  s.summary          = 'this is a test' #简短介绍，下面是详细介绍

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  #主页,这里要填写可以访问到的地址，不然验证不通过
  s.homepage         = 'https://github.com/wanglei19940101/SmartEducation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  #开源协议
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  #作者信息
  s.author           = { 'wanglei19940101' => 'maybe_mylove@163.com' }
  #项目地址，这里不支持ssh的地址，验证不通过，只支持HTTP和HTTPS，最好使用HTTPS
  s.source           = { :git => 'https://github.com/wanglei19940101/SmartEducation.git', :tag => "1.0.0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  #支持的平台及版本
  s.ios.deployment_target = '8.0'
  #代码源文件地址，**/*表示Classes目录及其子目录下所有文件，如果有多个目录下则用逗号分开，
  #如果需要在项目中分组显示，这里也要做相应的设置
  s.source_files = 'SmartEducation/SmartEducation/Classes/**/*'
  #资源文件地址
  # s.resource_bundles = {
  #   'SmartEducation' => ['SmartEducation/Assets/*.png']
  # }

  #公开头文件地址
  # s.public_header_files = 'Pod/Classes/**/*.h'
  #所需的framework，多个用逗号隔开
  # s.frameworks = 'UIKit', 'MapKit','AVFoundation'
  #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency
  # s.dependency 'AFNetworking', '~> 2.3'
end
