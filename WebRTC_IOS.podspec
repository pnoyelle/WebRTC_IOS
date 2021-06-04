Pod::Spec.new do |s|
  s.name         = "WebRTC_IOS"
  s.version      = "1.6.0-bitcode"
  s.summary      = "WebRTC SDK for iOS"
  s.description  = <<-DESC
    WebRTC is a free, open project that provides browsers and mobile
    applications with Real-Time Communications (RTC) capabilities via simple
    APIs.
                   DESC
  s.homepage     = "http://webrtc.org/"
  s.source       = { :http => 'https://github.com/pnoyelle/WebRTC_IOS/releases/download/1.6.0-bitcode/WebRTCSwiftModule.xcframework.zip' }
  s.license      = { :type => "BSD", :file => "LICENSE" }
  s.author    = "Google Inc."

  s.platform     = :ios, "10.0"
  s.vendored_frameworks = "WebRTC.xcframework"
end
