// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "BroadcastUploadExtensionHelper",
    platforms: [
        .iOS(.v13)
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
