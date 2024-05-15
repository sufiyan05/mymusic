//
//  GConstant.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height
let kFontRatio = kScreenWidth / 375

let defaults = UserDefaults.standard

let kAuthStoryboard = UIStoryboard(name: "Authentication", bundle: nil)
let kHomeStoryboard = UIStoryboard(name: "Home", bundle: nil)

 //---------------------------------------------------------------------

//MARK: - Font Size -

enum FontSize {
    case size9
    case size10
    case size12
    case size13
    case size14
    case size15
    case size16
    case size17
    case size18
    case size19
    case size20
    case size21
    case size22
    case size26
    case size28
    case size29
    case size30
  
    var value: CGFloat {
        switch self {
        case .size9:
            return 9.0
        case .size10:
            return 10.0
        case .size12:
            return 12.0
        case .size13:
            return 13.0
        case .size14:
            return 14.0
        case .size15:
            return 15.0
        case .size16:
            return 16.0
        case .size17:
            return 17.0
        case .size18:
            return 18.0
        case .size19:
            return 19.0
        case .size20:
            return 20.0
        case .size21:
            return 21.0
        case .size22:
            return 22.0
        case .size26:
            return 26.0
        case .size28:
            return 28.0
        case .size29:
            return 29.0
        case .size30:
            return 30.0
        }
    }
}
