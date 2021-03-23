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
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/4455/WebRTC.xcframework.zip",
        checksum: "0c514486e7da15c85cd6e67c6e79848b8198b83ac66a96159f6494f0e8954ca9"
      )
    ]
)
