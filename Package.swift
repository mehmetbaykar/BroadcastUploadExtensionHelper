// swift-tools-version:6.1
import PackageDescription

let package = Package(
    name: "BroadcastUploadExtensionHelper",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(name: "BroadcastUploadExtension", targets: ["BroadcastUploadExtension"])
    ],
    targets: [
        .target(
            name: "BroadcastHelper",
            publicHeadersPath: "include"
        ),
        .target(
            name: "BroadcastUploadExtension",
            dependencies: ["BroadcastHelper"]
        ),
        .testTarget(
            name: "BroadcastUploadExtensionHelperTests",
            dependencies: ["BroadcastUploadExtension"]
        )
    ]
)
