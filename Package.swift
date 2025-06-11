// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "BroadcastUploadExtensionHelper",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "BroadcastUploadExtensionHelper", targets: ["BroadcastUploadExtensionHelper"])
    ],
    targets: [
        .target(
            name: "ObjcHelper",
            publicHeadersPath: "include"
        ),
        .target(
            name: "BroadcastUploadExtensionHelper",
            dependencies: ["ObjcHelper"]
        ),
        .testTarget(
            name: "BroadcastUploadExtensionHelperTests",
            dependencies: ["BroadcastUploadExtensionHelper"]
        )
    ]
)
