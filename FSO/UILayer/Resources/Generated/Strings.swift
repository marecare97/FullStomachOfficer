// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum TK {
  internal enum DashBoard {
    /// Hello
    internal static let greeting = TK.tr("en", "dashBoard.greeting", fallback: "Hello")
    internal enum Orders {
      /// Order now
      internal static let addButton = TK.tr("en", "dashBoard.orders.addButton", fallback: "Order now")
      /// Orders
      internal static let title = TK.tr("en", "dashBoard.orders.title", fallback: "Orders")
    }
  }
  internal enum ForgotPass {
    /// Email
    internal static let email = TK.tr("en", "forgotPass.email", fallback: "Email")
    /// Restore your password
    internal static let restorePass = TK.tr("en", "forgotPass.restorePass", fallback: "Restore your password")
  }
  internal enum Login {
    /// Email
    internal static let email = TK.tr("en", "login.email", fallback: "Email")
    /// Forgot password?
    internal static let forgotPassword = TK.tr("en", "login.forgotPassword", fallback: "Forgot password?")
    /// LOGIN
    internal static let login = TK.tr("en", "login.login", fallback: "LOGIN")
    /// Password
    internal static let password = TK.tr("en", "login.password", fallback: "Password")
    /// en.strings
    ///   FSO
    /// 
    ///   Created by Marko Sentivanac on 13.12.23..
    internal static let title = TK.tr("en", "login.title", fallback: "Full Stomach Officer")
  }
  internal enum Profile {
    /// Email
    internal static let email = TK.tr("en", "profile.email", fallback: "Email")
    /// Last name
    internal static let lastName = TK.tr("en", "profile.lastName", fallback: "Last name")
    /// Name
    internal static let name = TK.tr("en", "profile.name", fallback: "Name")
    /// Notifications
    internal static let notifications = TK.tr("en", "profile.notifications", fallback: "Notifications")
    /// Office
    internal static let office = TK.tr("en", "profile.office", fallback: "Office")
    /// Save
    internal static let save = TK.tr("en", "profile.save", fallback: "Save")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension TK {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
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
