// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "WebRTC_IOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "WebRTC_IOS",
            targets: ["WebRTC"]),
    ],
    dependencies: [],
    targets: [
      .binaryTarget(
	    name: "WebRTC",
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/1.6.0-bitcode/WebRTCSwiftModule.xcframework.zip",
        checksum: "c4f24dc3a3d2c543b4ec57c08d36bba97ea52644ebf609cba7405799f114cbef"
      )
    ]
)
