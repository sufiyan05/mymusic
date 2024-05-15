//
//  OTPVarificationVM.swift
//  SpotifyMusic
//
//  Created by 2022M02 on 12/04/22.
//

import Foundation
import UIKit

class OTPVarificationVM {
    //MARK: - variable -
    
    //MARK: - Methods -
    private func validation(_ codeOne: String,_ codeTwo: String,_ codeThree: String,_ codeFour: String) -> String {
        
        if codeOne.isEmpty && codeTwo.isEmpty && codeThree.isEmpty && codeFour.isEmpty {
            return AppError.Enums.ValidationError.enterOTP.errorDescription!
        } else if codeOne.isEmpty || codeTwo.isEmpty || codeThree.isEmpty || codeFour.isEmpty {
            return AppError.Enums.ValidationError.validOTP.errorDescription!
        } else if codeOne != "1" || codeTwo != "2" || codeThree != "3" || codeFour != "4" {
            return AppError.Enums.ValidationError.validOTP.errorDescription!
        } else {
            return ""
        }
    }
}

extension OTPVarificationVM {
    
    func apiOTPVarification(codeOne: String, codeTwo: String, codeThree: String, codeFour: String, vc: UIViewController) {
        let errMsg = self.validation(codeOne, codeTwo, codeThree, codeFour)
        if errMsg != "" {
            vc.showAlert(strMessage: errMsg)
        } else {
            let vcChoosePodcast = StoryboardScene.Authentication.choosePodcastVC.instantiate()
            vc.navigationController?.pushViewController(vcChoosePodcast, animated: true)
        }
    }
}
