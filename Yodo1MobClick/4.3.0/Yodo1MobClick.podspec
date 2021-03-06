Pod::Spec.new do |s|
    s.name             = 'Yodo1MobClick'
    s.version          = '4.3.0'
    s.summary          = 'UMAnalytics 更新 V7.1.3 
                        1. 解决已知问题，提高SDK稳定性。
                            升级必读：https://developer.umeng.com/docs/119267/detail/119534

                            [ 改为海外版本 v7.1.0 ]
                        '
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

    s.source_files = "#{s.version}" +'/*.framework/Headers/*.h',"#{s.version}" +'/*.framework/Versions/A/Headers/*.h'
    
    s.public_header_files = "#{s.version}" +'/*.framework/Headers/*.h',"#{s.version}" +'/*.framework/Versions/A/Headers/*.h'
  
    s.vendored_frameworks = "#{s.version}" +'/*.framework'

    s.resources = "#{s.version}" +'/*.bundle'

    s.requires_arc = true

    s.xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'ENABLE_BITCODE' => "NO",
        "VALID_ARCHS": "armv7 arm64",
        "VALID_ARCHS[sdk=iphoneos*]": "armv7 arm64",
        "VALID_ARCHS[sdk=iphonesimulator*]": "x86_64"
    }

    s.frameworks = 'CoreTelephony','SystemConfiguration','UIKit','Foundation'

    s.libraries = 'sqlite3', 'z'

end
