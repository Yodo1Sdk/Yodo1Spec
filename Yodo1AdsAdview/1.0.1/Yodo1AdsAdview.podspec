Pod::Spec.new do |s|
    s.name             = 'Yodo1AdsAdview'
    s.version          = '1.0.1'
    s.summary          = 'Adview SDK V3.4.5
                            1.单独竞价广告sdk'
    s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC

    tags               = "#{s.name}"

    s.homepage         = 'http://git.yodo1.cn'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'yixian huang' => 'huangyixian@yodo1.com' }
    s.source           = { :git => "https://github.com/Yodo1/Yodo1Ads-iOS.git", :tag => tags + "#{s.version}" }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

    s.ios.deployment_target = '7.0'

    s.source_files = tags + '/*.h'

    s.resources = tags + '/*.bundle'

    s.public_header_files = tags + '/*.h'
    
    s.preserve_path = 'ChangeLog.txt'

    s.vendored_libraries = tags + '/*.a'

    s.frameworks = 'Accounts', 'AssetsLibrary','AVFoundation', 'CoreTelephony','CoreLocation', 'CoreMotion' ,'CoreMedia', 'EventKit','EventKitUI', 'iAd', 'ImageIO','MobileCoreServices', 'MediaPlayer' ,'MessageUI','MapKit','Social','StoreKit','Twitter','WebKit','SystemConfiguration','AudioToolbox','Security','CoreBluetooth'

    s.weak_frameworks = 'AdSupport','SafariServices','ReplayKit','CloudKit','GameKit'

    s.libraries = 'sqlite3', 'z','xml2','stdc++.6'

    s.requires_arc = true

    s.xcconfig = {
        "OTHER_LDFLAGS" => "-ObjC",
        "ENABLE_BITCODE" => "NO",
        "ONLY_ACTIVE_ARCH" => "NO"
    }

end
