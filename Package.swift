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
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/1.5.0-bitcode/WebRTC.xcframework.zip",
        checksum: "01f4661e1cda1c163524e2bd2f1f65877280f9e4a35898890282d66c498e5559"
      )
    ]
)
