// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  /// 2021 WRAPPED
  internal static let _2021Wrapped = L10n.tr("Localizable", "2021 WRAPPED")
  /// Continue with Apple
  internal static let continueWithApple = L10n.tr("Localizable", "Continue with Apple")
  /// Continue with Facebook
  internal static let continueWithFacebook = L10n.tr("Localizable", "Continue with Facebook")
  /// Continue with Google
  internal static let continueWithGoogle = L10n.tr("Localizable", "Continue with Google")
  /// Convallis arcu at turpis vel habitant pretium velit suscipit.
  internal static let convallisArcuAtTurpisVelHabitantPretiumVelitSuscipit = L10n.tr("Localizable", "Convallis arcu at turpis vel habitant pretium velit suscipit.")
  /// Diam quisque et libero diam phasellus faucibus malesuada nisl mattis.
  internal static let diamQuisqueEtLiberoDiamPhasellusFaucibusMalesuadaNislMattis = L10n.tr("Localizable", "Diam quisque et libero diam phasellus faucibus malesuada nisl mattis.")
  /// Done
  internal static let done = L10n.tr("Localizable", "Done")
  /// EXPLORE
  internal static let explore = L10n.tr("Localizable", "EXPLORE")
  /// FEATURED
  internal static let featured = L10n.tr("Localizable", "FEATURED")
  /// Forgot Password?
  internal static let forgotPassword = L10n.tr("Localizable", "Forgot Password?")
  /// Free on Spotify.
  internal static let freeOnSpotify = L10n.tr("Localizable", "Free on Spotify.")
  /// Log in
  internal static let login = L10n.tr("Localizable", "Login")
  /// LOGOUT
  internal static let logout = L10n.tr("Localizable", "LOGOUT")
  /// Millions of songs.
  internal static let millionsOfSongs = L10n.tr("Localizable", "Millions of songs.")
  /// MY PLAYLISTS
  internal static let myPlaylists = L10n.tr("Localizable", "MY PLAYLISTS")
  /// NEW RELEASES
  internal static let newReleases = L10n.tr("Localizable", "NEW RELEASES")
  /// Next
  internal static let next = L10n.tr("Localizable", "Next")
  /// Password
  internal static let password = L10n.tr("Localizable", "Password")
  /// POPULAR
  internal static let popular = L10n.tr("Localizable", "POPULAR")
  /// Search
  internal static let search = L10n.tr("Localizable", "Search")
  /// Send
  internal static let send = L10n.tr("Localizable", "Send")
  /// Sign up free
  internal static let signUpFree = L10n.tr("Localizable", "Sign up free")
  /// UPGRAD TO PREMIUM
  internal static let upgradToPremium = L10n.tr("Localizable", "UPGRAD TO PREMIUM")
  /// Volutpat consequat morbi etiam lacinia.
  internal static let volutpatConsequatMorbiEtiamLacinia = L10n.tr("Localizable", "Volutpat consequat morbi etiam lacinia.")
  /// What’s your email?
  internal static let whatSYourEmail = L10n.tr("Localizable", "What’s your email?")
  /// You’ll need to confirm this email later
  internal static let youLlNeedToConfirmThisEmailLater = L10n.tr("Localizable", "You’ll need to confirm this email later")
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
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
