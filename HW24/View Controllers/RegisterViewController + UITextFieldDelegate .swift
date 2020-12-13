//
//  RegisterViewController + UITextFieldDelegate .swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = #colorLiteral(red: 0.05490196078, green: 0.462745098, blue: 0.8156862745, alpha: 1)
        textField.layer.cornerRadius = 5
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 0
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailField:
            textField.resignFirstResponder()
            nameField.becomeFirstResponder()
        case nameField:
            textField.resignFirstResponder()
            passwordField.becomeFirstResponder()
        case passwordField:
            createProfile()
        default:
            break
        }
        return true
    }
}
