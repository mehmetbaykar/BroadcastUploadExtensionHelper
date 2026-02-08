# BroadcastUploadExtensionHelper

A Swift package that wraps an Objective-C helper for ReplayKit Broadcast Upload Extensions. It allows you to finish broadcasts gracefully without showing an error or to present a custom error message.

<p align="center">
If you found this helpful, you can support more open source work!
<br><br>
<a href="https://buymeacoffee.com/mehmetbaykar" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="60"></a>
</p>

---

## Usage

Add the package through Swift Package Manager using this repository's URL. Import `BroadcastUploadExtensionHelper` in your extension target:

```swift
import BroadcastUploadExtensionHelper
```

From your `RPBroadcastSampleHandler` subclass you can end the broadcast:

```swift
sampleHandler.finishGracefully()                   // End normally without and error alert
samplehandler.finishWithError(message: "Oops")     // End with an error alert
```
