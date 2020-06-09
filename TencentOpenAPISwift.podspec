#
# Be sure to run `pod lib lint TencentOpenAPISwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TencentOpenAPISwift'
  s.version          = '0.1.0'
  s.summary          = 'TencentOpenAPISwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LeeCQ'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李昌庆' => 'hx614614@163.com' }
  s.source           = { :git => 'https://github.com/LeeCQ/TencentOpenAPISwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#  s.source_files = 'TencentOpenAPISwift/Classes/**/*'
  s.subspec 'TencentOpenAPI' do |ss|
       ss.source_files = 'TencentOpenAPISwift/framework/TencentOpenAPI.framework/Headers/**.h'
       ss.public_header_files = 'TencentOpenAPISwift/framework/TencentOpenAPI.framework/Headers/**.h'

       ss.frameworks   = 'WebKit', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'
       ss.libraries    = 'sqlite3', 'iconv', 'stdc++', 'z'

       ss.vendored_frameworks =  'TencentOpenAPISwift/framework/*.framework'
#       ss.vendored_libraries = 'WechatOpenSDKSwift/Vendors/OpenSDK1.8.6.2/*.a'

  #     ss.preserve_paths = 'WechatOpenSDKSwift/Vendors/*.framework'
       ss.pod_target_xcconfig = { 'LD_RUNPATH_SEARCH_PATHS' => '$(PODS_ROOT)/TencentOpenAPISwift/framework/' }
     end
end
