#WEBRTC_SRC="~/Desktop/IOS/WebRTC_IOS/src"

mkdir -p out
rm -rf out/*
mkdir -p build
rm -rf build/*
python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py --bitcode --arch x64 -o out/ios_x64
python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py --bitcode --arch arm64 -o out/ios_arm64

xcodebuild -create-xcframework -framework out/ios_arm64/WebRTC.framework -framework out/ios_x64/WebRTC.framework -output build/WebRTC.xcframework

cp -R out/ios_arm64/WebRTC.framework  ./build/
lipo -create out/ios_arm64/WebRTC.framework/WebRTC  out/ios_x64/WebRTC.framework/WebRTC  -output build/WebRTC.framework/WebRTC

mkdir -p build/Carthage/Build/iOS

cp -R build/WebRTC.framework build/Carthage/Build/iOS/WebRTC.framework


zip -r build/WebRTC.framework.zip build/Carthage
zip -r build/WebRTC.xcframework.zip build/WebRTC.xcframework
zip -r build/WebRTC_IOS.zip build/WebRTC.framework

