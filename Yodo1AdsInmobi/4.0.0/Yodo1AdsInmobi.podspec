Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsInmobi'
    s.version          = '4.0.0'
    s.summary          = 'Inmobi v9.0.4'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/thirdsdks/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '9.0'

    s.source_files = "#{s.version}" + '/InMobiSDK.framework/Headers/*.h',"#{s.version}" + '/INMMoatMobileAppKit.framework/Headers/*.h'
    s.public_header_files = "#{s.version}" + '/InMobiSDK.framework/Headers/*.h',"#{s.version}" + '/INMMoatMobileAppKit.framework/Headers/*.h'
    s.vendored_frameworks = "#{s.version}" + '/InMobiSDK.framework',"#{s.version}" + '/INMMoatMobileAppKit.framework'
    s.preserve_paths = "#{s.version}" + '/InMobiSDK.framework', 'ChangeLog.txt',"#{s.version}" + '/INMMoatMobileAppKit.framework'
    
    s.frameworks = 'AdSupport','AudioToolbox','AVFoundation','CoreTelephony','CoreLocation','Foundation','MediaPlayer','MessageUI','StoreKit','Social','SystemConfiguration','Security','SafariServices','UIKit'
    s.weak_frameworks = 'WebKit'
    s.libraries = 'sqlite3.0','z','xml2'
    s.requires_arc = true
    
    valid_archs = ['armv7','arm64','x86_64']
    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO",
        'VALID_ARCHS' =>  valid_archs.join(' ')
    }

end
