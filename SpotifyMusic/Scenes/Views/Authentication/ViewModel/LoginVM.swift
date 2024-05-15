//
//  LoginVM.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import Foundation
import UIKit

class LoginVM {
    
    //MARK: - variable -
    var email = "s@gmail.com"
    var password = "S1234567"
    //MARK: - Methods -
    private func validation(_ email: String,_ password: String) -> String {
        if email.isEmpty {
            return AppError.Enums.ValidationError.enterEmail.errorDescription!
        }else if !email.isValid(.email) {
            return AppError.Enums.ValidationError.enterValidEmail.errorDescription!
        } else if password.isEmpty {
            return AppError.Enums.ValidationError.enterPassword.errorDescription!
        } else {
            return ""
        }
    }
}

extension LoginVM {
    
    func apiLogin(_ email: String,_ password: String, vc: UIViewController) {
        
        let errMsg = self.validation(email, password)
        if errMsg != "" {
            vc.showAlert(strMessage: errMsg)
        } else {
            GFunction.shared.setDefaults()
        }
    }
}
