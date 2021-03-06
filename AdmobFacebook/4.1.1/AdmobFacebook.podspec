Pod::Spec.new do |s|
    s.name             = 'AdmobFacebook'
    s.version          = '4.1.1'
    s.summary          = 'Admob 更新v7.58.0，Facebook SDK v6.5.0'
    s.description      = <<-DESC
    TODO: Add long description of the pod here 测试.
                       DESC
    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/advert/YD1Admob/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '9.0'

    s.source_files = "#{s.version}" + '/FacebookAdapter.framework/Versions/A/Headers/*.h'
    s.preserve_paths = "#{s.version}" + '/FacebookAdapter.framework/*'
    s.vendored_frameworks = "#{s.version}" + '/FacebookAdapter.framework'
    s.public_header_files = "#{s.version}" + '/FacebookAdapter.framework/Versions/A/Headers/*.h'

    s.requires_arc = true

    s.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'ENABLE_BITCODE' => "NO",
        "VALID_ARCHS": "armv7 arm64",
        "VALID_ARCHS[sdk=iphoneos*]": "armv7 arm64",
        "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
    }

    s.frameworks = 'UIKit', 'Foundation','AVFoundation','CoreMedia','CoreVideo','QuartzCore','SystemConfiguration','CoreGraphics','CFNetwork','MobileCoreServices','StoreKit','AdSupport','CoreLocation','CoreTelephony','Security','WebKit'
    s.libraries = 'z'
    
    s.dependency 'YD1Admob','4.1.1'
    s.dependency 'Yodo1AdsFacebook','4.1.1'

end
