Pod::Spec.new do |s|
  s.name             = 'TapMindALAdapter'
  s.version          = '1.0.2'
  s.summary          = 'A high-performance iOS Adapter for delivering intelligent and optimized ads.'

  s.description      = <<-DESC
              TapMindALAdapter is a lightweight and scalable iOS advertising Adapter designed to deliver high-quality, optimized advertisements. It helps developers monetize their applications efficiently while maintaining a smooth and engaging user experience.
  DESC

  s.homepage         = 'https://github.com/tapmind-tech/TapMind-CA-Applovin-iOS.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kishan Italiya' => 'kishan.italiya@tovoc.com' }

  s.platform         = :ios, '13.0'
  s.swift_version    = '5.0'

  s.source           = {
    :git => 'https://github.com/tapmind-tech/TapMind-CA-Applovin-iOS.git',
    :tag => s.version.to_s
  }
s.vendored_frameworks = 'TapMindALAdapter.xcframework'
  #s.source_files     = 'TapMindSDK/**/*.{h,m}'
  #s.public_header_files = 'TapMindSDK/Public/**/*.h'
  #s.exclude_files    = 'TapMindSDK/Exclude'
#s.static_framework = true
s.requires_arc = true
# 👉 Dependencies
  s.dependency 'TapMindSDK'
    s.dependency 'AppLovinSDK'
end
