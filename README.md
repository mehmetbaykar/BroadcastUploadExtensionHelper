# BroadcastUploadExtensionHelper

A Swift package that wraps an Objective-C helper for ReplayKit Broadcast Upload Extensions. It allows you to finish broadcasts gracefully without showing an error or to present a custom error message.

## Usage

Add the package through Swift Package Manager using this repository's URL. Import `BroadcastUploadExtension` in your extension target:

```swift
import BroadcastUploadExtension
```

From your `RPBroadcastSampleHandler` subclass you can end the broadcast:

```swift
finishGracefully()                   // End normally
finishWithError(message: "Oops")     // End with an error alert
```

`finishGracefully()` invokes the Objective-C helper to end without an alert.
