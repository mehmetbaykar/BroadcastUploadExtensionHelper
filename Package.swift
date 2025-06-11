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
            name: "ObjHelper",
            publicHeadersPath: "include"
        ),
        .target(
            name: "BroadcastUploadExtensionHelper",
            dependencies: ["ObjHelper"]
        ),
        .testTarget(
            name: "BroadcastUploadExtensionHelperTests",
            dependencies: ["BroadcastUploadExtensionHelper"]
        )
    ]
)
