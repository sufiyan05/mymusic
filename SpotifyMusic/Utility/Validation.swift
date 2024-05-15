//
//  Validation.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class Validation {
    static func isValidEmail(_ text: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}", options: .caseInsensitive)
        return regex.firstMatch(in: text, options: [], range: NSRange(location: 0, length: text.count)) != nil
    }
    static func isValidPassword(text: String) -> Bool {
        let regex = try! NSRegularExpression(pattern: "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$", options: .caseInsensitive)
        return regex.firstMatch(in: text, options: [], range: NSRange(location: 0, length: text.count)) != nil
    }
}
