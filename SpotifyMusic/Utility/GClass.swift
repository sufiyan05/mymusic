//
//  GClass.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

class ThemeTextField: UITextField {
    var view = UIView()
    override func awakeFromNib() {
        self.backgroundColor = .appThemeLightBlack
        self.textColor = .white
        view = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        self.rightView = view
        self.leftView = view
        self.rightViewMode = .always
        self.leftViewMode = .always
        self.font = FontFamily.SFProText.medium.font(size: FontSize.size14.value)
        DispatchQueue.main.async {
            self.layer.cornerRadius = 4
        }
    }
}

//----------------------------------------------------------------------

class ThemeView: UIView {
    override func awakeFromNib() {
        self.backgroundColor = .none
        self.layer.borderColor = UIColor.appThemeExtraLightWhite.cgColor
        self.layer.borderWidth = 1
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
}

//----------------------------------------------------------------------

class ThemeButton: UIButton {
    override func awakeFromNib() {
        self.backgroundColor = .appThemeDarkGray
        self.setTitleColor(.black, for: .normal)
        self.titleLabel?.font = FontFamily.SFProText.semibold.font(size: FontSize.size14.value)
        DispatchQueue.main.async {
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
}

//----------------------------------------------------------------------

class ThemeLabel: UILabel {
    override func awakeFromNib() {
        self.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size16.value), color: .white)
    }
}


//----------------------------------------------------------------------

class ThemeTitle: UILabel {
    override func awakeFromNib() {
        self.fontStyle(font: FontFamily.SFProText.semibold.font(size: FontSize.size18.value), color: .white)
    }
}

//----------------------------------------------------------------------

class ThemeSubTitle: UILabel {
    override func awakeFromNib() {
        self.fontStyle(font: FontFamily.SFProText.medium.font(size: FontSize.size10.value), color: .appThemeLightWhite)
    }
}
