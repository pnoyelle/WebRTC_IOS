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
	    url: "https://github.com/pnoyelle/WebRTC_IOS/releases/download/1.6.0/WebRTCSwiftModule.xcframework.zip",
        checksum: "48a2e24ca36b52356597a943d1343f3d54259074cca0aafe5e123808554f06fc"
      )
    ]
)
