//
//  UITextField+Class.swift
//  MVVMBasicStructure
//
//  Created by KISHAN_RAJA on 22/09/20.
//  Copyright © 2020 KISHAN_RAJA. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift


class OTPTextField: UITextField {
    //    let padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.keyboardType = .asciiCapableNumberPad
        self.backgroundColor = .appThemeLightBlack
        self.textColor = .white
        self.textAlignment = .center
        self.isSecureTextEntry = true
        self.font = FontFamily.SFProText.medium.font(size: FontSize.size16.value)
        DispatchQueue.main.async {
            self.layer.cornerRadius = 4
        }
        self.delegate = self
        self.addTarget(self, action: #selector(textfieldIsEditing(_:)), for: .editingChanged)
        self.addTarget(self, action: #selector(textfieldIsEditing(_:)), for: .editingChanged)
    }
    
    override func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("--------------------------------")
        if string.isEmpty {
            return true
        }
        if textField.text?.count == 1{
            textField.text = ""
            return true && string.isValid(.number)
        }
        print("--------------------------------")
        return true && string.isValid(.number)
    }
    
    @objc func textfieldIsEditing(_ textField:UITextField){
        if !textField.text!.isEmpty{
            if IQKeyboardManager.shared.canGoNext{
                IQKeyboardManager.shared.goNext()
            } else {
                self.resignFirstResponder()
            }
        }
    }
    override func deleteBackward() {
        super.deleteBackward()
        if IQKeyboardManager.shared.canGoPrevious{
            IQKeyboardManager.shared.goPrevious()
        }
    }
}
