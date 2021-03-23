// swift-tools-version:5.2
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
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/4455/WebRTC.xcframework.zip"
      )
    ]
)
