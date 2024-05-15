// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name



internal extension UIImage {
  static let accentColor = ImageAsset(name: "AccentColor")
  static let apple = ImageAsset(name: "apple")
  static let arrowBack = ImageAsset(name: "arrowBack")
  static let boyOne = ImageAsset(name: "boyOne")
  static let boyTwo = ImageAsset(name: "boyTwo")
  static let darkPlaylistOne = ImageAsset(name: "darkPlaylistOne")
  static let darkPlaylistTwo = ImageAsset(name: "darkPlaylistTwo")
  static let facebook = ImageAsset(name: "facebook")
  static let feature = ImageAsset(name: "feature")
  static let google = ImageAsset(name: "google")
  static let grid = ImageAsset(name: "grid")
  static let home = ImageAsset(name: "home")
  static let internetFour = ImageAsset(name: "internetFour")
  static let internetOne = ImageAsset(name: "internetOne")
  static let internetThree = ImageAsset(name: "internetThree")
  static let internetTwo = ImageAsset(name: "internetTwo")
  static let logo = ImageAsset(name: "logo")
  static let profile = ImageAsset(name: "profile")
  static let radio = ImageAsset(name: "radio")
  static let search = ImageAsset(name: "search")
  static let serialKiller = ImageAsset(name: "serialKiller")
  static let serialKillerFour = ImageAsset(name: "serialKillerFour")
  static let serialKillerGirl = ImageAsset(name: "serialKillerGirl")
  static let serialKillerThree = ImageAsset(name: "serialKillerThree")
  static let settings = ImageAsset(name: "settings")
  static let shadow = ImageAsset(name: "shadow")
  static let spotify = ImageAsset(name: "spotify")
  static let startBackground = ImageAsset(name: "startBackground")
  static let theHistoryFour = ImageAsset(name: "theHistoryFour")
  static let theHistoryOne = ImageAsset(name: "theHistoryOne")
  static let theHistoryThree = ImageAsset(name: "theHistoryThree")
  static let theHistoryTwo = ImageAsset(name: "theHistoryTwo")
  static let wrapped = ImageAsset(name: "wrapped")
}

internal extension UIColor {
  static let appThemeBlack = UIColor(named: "ThemeBlack")!
  static let appThemeDarkBlack = UIColor(named: "ThemeDarkBlack")!
  static let appThemeDarkGray = UIColor(named: "ThemeDarkGray")!
  static let appThemeExtraLightBlack = UIColor(named: "ThemeExtraLightBlack")!
  static let appThemeExtraLightWhite = UIColor(named: "ThemeExtraLightWhite")!
  static let appThemeGray = UIColor(named: "ThemeGray")!
  static let appThemeGreen = UIColor(named: "ThemeGreen")!
  static let appThemeLightBlack = UIColor(named: "ThemeLightBlack")!
  static let appThemeLightWhite = UIColor(named: "ThemeLightWhite")!
  static let appThemeWhite = UIColor(named: "ThemeWhite")!
}

internal enum Asset {
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
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

