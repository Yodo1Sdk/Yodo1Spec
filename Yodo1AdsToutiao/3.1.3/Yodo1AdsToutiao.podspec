Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsToutiao'
    s.version          = '3.1.3'
    s.summary          = '头条sdk v2.5.1.5 fix bug [iOS13] '
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
    s.homepage         = 'https://github.com'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => "#{s.version}" + "/LICENSE" }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :http => "https://cocoapods.yodo1api.com/thirdsdks/" + "#{s.name}" + "/"+ "#{s.version}" + ".zip" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '8.0'
    s.source_files = "#{s.version}" + '/BUAdSDK.framework/Versions/A/Headers/*.h'
    s.public_header_files = "#{s.version}" + '/BUAdSDK.framework/Versions/A/Headers/*.h'
    s.resources = "#{s.version}" + '/*.bundle'
    s.preserve_path = "#{s.version}" + '/ChangeLog.txt'
    s.vendored_frameworks = "#{s.version}" + '/BUAdSDK.framework'

    s.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'ENABLE_BITCODE' => 'NO',
        'ONLY_ACTIVE_ARCH' => 'NO'
    }

    s.frameworks = ["StoreKit",
                    "MobileCoreServices",
                    "WebKit",
                    "MediaPlayer",
                    "CoreMedia",
                    "AVFoundation",
                    "CoreLocation",
                    "CoreTelephony",
                    "SystemConfiguration",
                    "AdSupport",
                    "CoreMotion",
                    "Photos",
                    "ImageIO",
                    "Accelerate"
                    ]

    # s.weak_frameworks = 'AdSupport'

    s.libraries = ["c++",
                    "resolv.9",
                    "z",
                    "sqlite3"
                    ]
end
