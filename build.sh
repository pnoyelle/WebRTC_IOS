WEBRTC_SRC="./src"
bitcode=""
builddir="build/classic"
outdir="out/classic"
while getopts "b" opt
do
    case $opt in
    (b) bitcode="--bitcode"; outdir="out/bitcode"; builddir="build/bitcode" ;;
    (*) exit ;;
    esac
done

rm -rf $outdir
rm -rf $builddir
mkdir -p $outdir
mkdir -p $builddir

python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py $bitcode --arch x64 -o $outdir/ios_x64 --build_config release
python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py $bitcode --arch arm64 -o $outdir/ios_arm64 --build_config release
python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py $bitcode --arch x86 -o $outdir/ios_x86 --build_config release
python $WEBRTC_SRC/tools_webrtc/ios/build_ios_libs.py $bitcode --arch arm -o $outdir/ios_arm --build_config release

cp -R $outdir/ios_arm64/WebRTC.framework  ./$builddir/

lipo -create $outdir/ios_arm64/WebRTC.framework/WebRTC $outdir/ios_arm/WebRTC.framework/WebRTC   -output $outdir/ios_arm64/WebRTC.framework/WebRTC

simulatorARM64=""
if [ -z $bitcode ] 
then 
  if [ -d "./s_classic_arm64" ] 
  then
    simulatorARM64="s_classic_arm64/ios_x64/WebRTC.framework/WebRTC"
  fi
else 
 if [ -d "./s_bitcode_arm64" ] 
 then
    simulatorARM64="s_bitcode_arm64/ios_x64/WebRTC.framework/WebRTC"
 fi
fi

lipo -create $outdir/ios_x86/WebRTC.framework/WebRTC $outdir/ios_x64/WebRTC.framework/WebRTC $simulatorARM64   -output $outdir/ios_x64/WebRTC.framework/WebRTC 
xcodebuild -create-xcframework -framework $outdir/ios_arm64/WebRTC.framework -framework $outdir/ios_x64/WebRTC.framework  -output $builddir/WebRTC.xcframework
mkdir -p $builddir/Carthage/Build/iOS

cp -R $builddir/WebRTC.xcframework $builddir/Carthage/Build/iOS/WebRTC.xcframework

cd $builddir
zip -r WebRTC.framework.zip Carthage
zip -r WebRTC.xcframework.zip WebRTC.xcframework
