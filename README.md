# BroadcastUploadExtensionHelper

[![Build](https://github.com/mehmetbaykar/BroadcastUploadExtensionHelper/actions/workflows/ci.yml/badge.svg)](https://github.com/mehmetbaykar/BroadcastUploadExtensionHelper/actions/workflows/ci.yml)
[![Swift 5.10](https://img.shields.io/badge/Swift-5.10-orange.svg)](https://swift.org)
[![Platform iOS 13+](https://img.shields.io/badge/Platform-iOS%2013%2B-blue.svg)](https://developer.apple.com/ios/)

A Swift package that wraps an Objective-C helper for ReplayKit Broadcast Upload Extensions. It allows you to finish broadcasts gracefully without showing an error or to present a custom error message.

## Usage

Add the package through Swift Package Manager using this repository's URL. Import `BroadcastUploadExtensionHelper` in your extension target:

```swift
import BroadcastUploadExtensionHelper
```

From your `RPBroadcastSampleHandler` subclass you can end the broadcast:

```swift
sampleHandler.finishGracefully()                   // End normally without an error alert
sampleHandler.finishWithError(message: "Oops")     // End with an error alert
```

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/mehmetbaykar/BroadcastUploadExtensionHelper.git", from: "1.0.0")
]
```

Or add it directly in Xcode:
1. File → Add Packages
2. Enter the repository URL: `https://github.com/mehmetbaykar/BroadcastUploadExtensionHelper`
3. Add to your Broadcast Upload Extension target

## Requirements

- iOS 13.0+
- Swift 5.10+
- Xcode 14.0+

## How It Works

This package provides a workaround for a limitation in ReplayKit's `RPBroadcastSampleHandler`. Normally, calling `finishBroadcastWithError(nil)` would show an error dialog even though no error occurred. This package uses Objective-C to safely call the method with `nil`, allowing you to end broadcasts gracefully.

## Security

This repository is safe for public use. See [SECURITY.md](SECURITY.md) for details on:
- Why the GitHub Actions workflow is secure
- How external contributors are protected
- Security best practices implemented

## License

This project is available under the terms specified in the [LICENSE](LICENSE) file.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. All PRs from external contributors require approval before workflows run, ensuring repository security.
