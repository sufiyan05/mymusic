//
//  ForgotPasswordVM.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import Foundation
import UIKit

class ForgotPasswordVM {
    
    //MARK: - variable -
    //MARK: - Methods -
    private func validation(_ email: String) -> String {
        if email.isEmpty {
            return AppError.Enums.ValidationError.enterEmail.errorDescription!
        }else if !email.isValid(.email) {
            return AppError.Enums.ValidationError.enterValidEmail.errorDescription!
        } else {
            return ""
        }
    }
}

extension ForgotPasswordVM {
    
    func apiForgotPassword(_ email: String, vc: UIViewController) {
        
        let errMsg = self.validation(email)
        if errMsg != "" {
            vc.showAlert(strMessage: errMsg)
        } else {
            let vcLogin = StoryboardScene.Authentication.loginVC.instantiate()
            vc.navigationController?.pushViewController(vcLogin, animated: true)
        }
    }
}
