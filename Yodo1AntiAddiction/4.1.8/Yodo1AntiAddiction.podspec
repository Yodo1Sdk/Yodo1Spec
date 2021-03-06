Pod::Spec.new do |s|
    s.name             = 'Yodo1AntiAddiction'
    s.version          = '4.1.8'
    s.summary          = '灵活使用在线配置,fix bug/ 转换为元'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/foundation/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '9.0'

    s.source_files  = "#{s.version}" + '/*.{h,mm,m}'

    s.public_header_files = "#{s.version}" + '/*.h'

    #s.vendored_frameworks = tags + '/UCenter.framework'
    
    # s.vendored_libraries = "#{s.version}" + '/*.a'

    # s.resources = "#{s.version}" + '/*.bundle'

    # s.preserve_path = "#{s.version}" + '/ChangeLog.txt'
    
    s.requires_arc = true

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "VALID_ARCHS": "armv7 arm64",
        "VALID_ARCHS[sdk=iphoneos*]": "armv7 arm64",
        "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
    }

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'

    s.libraries = 'sqlite3', 'z'
    s.compiler_flags = '-Dunix'
    
    s.dependency 'Yodo1OnlineParameter','4.2.3'
    s.dependency 'Yodo1UCenter', '4.2.8'
    s.dependency 'Yodo1AFNetworking','4.1.0'
    s.dependency 'Yodo1Commons','4.1.0'

end
