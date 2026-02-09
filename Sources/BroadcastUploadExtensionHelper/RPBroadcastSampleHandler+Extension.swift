import ObjcHelper
import ReplayKit

extension RPBroadcastSampleHandler {
  /// Gracefully ends the current broadcast session without displaying an error to the user.
  /// Use this method when terminating the broadcast due to normal conditions
  /// (e.g., user requested stop, successful completion).
  ///
  /// - Note: This uses the system's graceful termination method rather than showing an error.
  public func finishGracefully() {
    finishBroadcastGracefully(self)
  }

  /// Terminates the broadcast session and displays the provided error message to the user.
  /// Use this method when the broadcast needs to be stopped due to an error condition
  /// (e.g., insufficient resources, invalid configuration).
  ///
  /// - Parameter message: A user-friendly error message explaining why the broadcast ended
  /// - Note: This will present the error message in a system alert to the user
  public func finishWithError(message: String) {
    let errorDomain = Bundle.main.bundleIdentifier ?? "com.broadcast.extension"
    let userInfo: [String: Any] = [
      NSLocalizedFailureReasonErrorKey: message,
    ]

    let error = NSError(
      domain: errorDomain,
      code: 1001,
      userInfo: userInfo
    )

    finishBroadcastWithError(error)
  }
}
