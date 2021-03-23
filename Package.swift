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
        checksum: "c6f4ea7bfda91192d4fc6b61121d5bc61d8532a7c140b73e311d5f34b9a5de3a"
      )
    ]
)
