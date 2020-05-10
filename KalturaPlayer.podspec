suffix = '-dev'   # Dev mode
# suffix = ''       # Release

Pod::Spec.new do |s|

    s.name             = 'KalturaPlayer'
    s.version          = '0.0.1' + suffix
    s.summary          = 'KalturaPlayer -- Kaltura Player for iOS'
    s.homepage         = 'https://github.com/kaltura/kaltura-player-ios'
    s.license          = { :type => 'AGPLv3', :file => 'LICENSE' }
    s.author           = { 'Kaltura' => 'community@kaltura.com' }
    s.source           = { :git => 'https://github.com/kaltura/kaltura-player-ios.git', :tag => 'v' + s.version.to_s }
    s.swift_version    = '5.0'

    s.ios.deployment_target = '9.0'

    s.subspec 'Core' do |sp|
      sp.source_files = 'Sources/*', 'Sources/Basic/*'
      
      sp.dependency 'PlayKit', '~> 3.16'
      
    end
    
    s.default_subspec = 'Core'
end
