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
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/1.5.0/WebRTC.xcframework.zip",
        checksum: "34d42532a26a6ef947c76f7dcafc0e7773195fc4cf639cb670a6da0352ae3f81"
      )
    ]
)
