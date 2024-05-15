//
//  GExtension.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 11/04/22.
//

import Foundation
import UIKit

//MARK: - UIViewController -
extension UIViewController {
    //alert method
    func showAlert(strMessage: String){
        let alertController = UIAlertController(title: "", message: strMessage, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default){ alertAction in
            print("action Ok alert Tapped")
        }
        alertController.addAction(actionOk)
        present(alertController, animated: true, completion: nil)
    }
}

//======================================================================

extension UINavigationController {
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
    }
}

extension UITabBarController {
    open override func awakeFromNib() {
        super.awakeFromNib()
        self.tabBar.backgroundImage = UIImage()
    }
}
//======================================================================

//MARK: - UIButton -
extension UIControl {
    func borderStyle(color: UIColor, width: CGFloat) {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
}

//======================================================================

//MARK: - UILabel -
extension UILabel {
    func fontStyle(font: UIFont, color: UIColor) {
        self.font = font
        self.textColor = color
    }
    
    func addCharacterSpacing(_ kernValue: Double = 1.15) {
        if let labelText = text, labelText.count > 0 {
            let attributedString = NSMutableAttributedString(string: labelText)
            attributedString.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: attributedString.length - 1))
            attributedText = attributedString
        }
    }
}

//======================================================================

//MARK: - UITextField -
extension UITextField {
    func setRightIcon(image: UIImage!, space: CGFloat) {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: self.frame.size.height))
        let icon = UIImageView(frame: CGRect(x: space, y: self.frame.height/2 - 12, width: 24 * ScreenSize.widthAspectRatio, height: 24 * ScreenSize.heightAspectRatio))
        icon.image = image
        icon.tintColor = .white
        view.addSubview(icon)
        self.rightView = view
        self.rightViewMode = .always
    }
}


//======================================================================

extension String {
    enum ValidationType: String {
        case alphabet = "[A-Za-z]+"
        case alphabetWithSpace = "[A-Za-z ]*"
        case alphabetNum = "[A-Za-z-0-9]*"
        case alphabetNumWithSpace = "[A-Za-z0-9 ]*"
        case userName = "[A-Za-z0-9 _]*"
        case name = "^[A-Z a-z]*$"
        case email = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        case number = "[0-9]+"
        case password = "^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$"
        case mobileNumber = "^[0-9]{8,11}$"
        case postalCode = "^[A-Za-z0-9- ]{1,10}$"
        case zipcode = "^[A-Za-z0-9]{4,}$"
        case currency = "^([0-9]+)(\\.([0-9]{0,2})?)?$"
        case amount = "^\\s*(?=.*[1-9])\\d*(?:\\.\\d{1,2})?\\s*$"
        case website = "((https|http)://)((\\w|-)+)(([.]|[/])((\\w|-)+))+"
    }
    
    func isValid(_ type: ValidationType) -> Bool {
        guard !isEmpty else { return false }
        let regTest = NSPredicate(format: "SELF MATCHES %@", type.rawValue)
        return regTest.evaluate(with: self)
    }
    
    var isEmpty: Bool {
        return self.trimmingCharacters(in: .whitespacesAndNewlines) == ""
    }
}
