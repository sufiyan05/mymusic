// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

// swiftlint:disable sorted_imports
import Foundation
import UIKit

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length implicit_return

// MARK: - Storyboard Scenes

// swiftlint:disable explicit_type_interface identifier_name line_length type_body_length type_name
internal enum StoryboardScene {
  internal enum Authentication: StoryboardType {
    internal static let storyboardName = "Authentication"

    internal static let initialScene = InitialSceneType<UIKit.UINavigationController>(storyboard: Authentication.self)

    internal static let choosePodcastVC = SceneType<SpotifyMusic.ChoosePodcastVC>(storyboard: Authentication.self, identifier: "ChoosePodcastVC")

    internal static let forgotPasswordVC = SceneType<SpotifyMusic.ForgotPasswordVC>(storyboard: Authentication.self, identifier: "ForgotPasswordVC")

    internal static let loginVC = SceneType<SpotifyMusic.LoginVC>(storyboard: Authentication.self, identifier: "LoginVC")

    internal static let otpVarificationVC = SceneType<SpotifyMusic.OTPVarificationVC>(storyboard: Authentication.self, identifier: "OTPVarificationVC")

    internal static let signUpVC = SceneType<SpotifyMusic.SignUpVC>(storyboard: Authentication.self, identifier: "SignUpVC")

    internal static let startScreenVC = SceneType<SpotifyMusic.StartScreenVC>(storyboard: Authentication.self, identifier: "StartScreenVC")

    internal static let navStartScreen = SceneType<UIKit.UINavigationController>(storyboard: Authentication.self, identifier: "navStartScreen")
  }
  internal enum Home: StoryboardType {
    internal static let storyboardName = "Home"

    internal static let initialScene = InitialSceneType<SpotifyMusic.RoundTabbarVC>(storyboard: Home.self)

    internal static let homeVC = SceneType<SpotifyMusic.HomeVC>(storyboard: Home.self, identifier: "HomeVC")

    internal static let libraryVC = SceneType<SpotifyMusic.LibraryVC>(storyboard: Home.self, identifier: "LibraryVC")

    internal static let profileVC = SceneType<SpotifyMusic.ProfileVC>(storyboard: Home.self, identifier: "ProfileVC")

    internal static let roundTabbarVC = SceneType<SpotifyMusic.RoundTabbarVC>(storyboard: Home.self, identifier: "RoundTabbarVC")

    internal static let searchVC = SceneType<SpotifyMusic.SearchVC>(storyboard: Home.self, identifier: "SearchVC")

    internal static let navHome = SceneType<UIKit.UINavigationController>(storyboard: Home.self, identifier: "navHome")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length type_body_length type_name

// MARK: - Implementation Details

internal protocol StoryboardType {
  static var storyboardName: String { get }
}

internal extension StoryboardType {
  static var storyboard: UIStoryboard {
    let name = self.storyboardName
    return UIStoryboard(name: name, bundle: BundleToken.bundle)
  }
}

internal struct SceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type
  internal let identifier: String

  internal func instantiate() -> T {
    let identifier = self.identifier
    guard let controller = storyboard.storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
      fatalError("ViewController '\(identifier)' is not of the expected class \(T.self).")
    }
    return controller
  }

  @available(iOS 13.0, tvOS 13.0, *)
  internal func instantiate(creator block: @escaping (NSCoder) -> T?) -> T {
    return storyboard.storyboard.instantiateViewController(identifier: identifier, creator: block)
  }
}

internal struct InitialSceneType<T: UIViewController> {
  internal let storyboard: StoryboardType.Type

  internal func instantiate() -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController() as? T else {
      fatalError("ViewController is not of the expected class \(T.self).")
    }
    return controller
  }

  @available(iOS 13.0, tvOS 13.0, *)
  internal func instantiate(creator block: @escaping (NSCoder) -> T?) -> T {
    guard let controller = storyboard.storyboard.instantiateInitialViewController(creator: block) else {
      fatalError("Storyboard \(storyboard.storyboardName) does not have an initial scene.")
    }
    return controller
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
