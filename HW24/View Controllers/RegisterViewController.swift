//
//  RegisterViewController.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit


enum CustomAlertSationsType{
    case error
    case good
}

struct AlertSation {
    let logo: String
    let text: String
    let buttonAction: Void
}



class RegisterViewController: UIViewController {
    @IBOutlet weak var createButton: UIButton!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var customAlert: UIView!
    @IBOutlet weak var customAlertLogo: UILabel!
    @IBOutlet weak var customAlertText: UILabel!
    
    let customAlertStation: CustomAlertSationsType = .error
    
    let errorCustomALert = AlertSation(
        logo: "Ошибка",
        text: "Пользователь с таким email уже существует",
        buttonAction: {
            print("error")
        }()
    )
    
    let goodCustomALert = AlertSation(
        logo: "Великолепно!",
        text: "Профиль пользователя создан",
        buttonAction: {
            print("perfect")
        }()
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customAlert.isHidden = true
        
        createButton.layer.cornerRadius = 5
        emailField.delegate = self
        nameField.delegate = self
        passwordField.delegate = self
        
        customAlert.layer.shadowColor = #colorLiteral(red: 0.05490196078, green: 0.462745098, blue: 0.8156862745, alpha: 1)
        customAlert.layer.shadowOpacity = 0.7
        customAlert.layer.shadowOffset = .zero
        customAlert.layer.shadowRadius = 50
        customAlert.layer.borderWidth = 2
        customAlert.layer.borderColor = #colorLiteral(red: 0.05490196078, green: 0.462745098, blue: 0.8156862745, alpha: 1)
        customAlert.layer.cornerRadius = 15
    }
    
    @IBAction func createButtonAction(_ sender: Any) {
        createProfile()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        
    }
    
    func createProfile(){
        
    }
    
    @IBAction func alertButton(_ sender: Any) {
        customAlert.isHidden = true
    }
    
    func refreshCustomAlert(){
        switch customAlertStation {
        case .error:
            customAlertLogo.text = errorCustomALert.logo
            customAlertText.text = errorCustomALert.text
        case .good:
            customAlertLogo.text = goodCustomALert.logo
            customAlertText.text = goodCustomALert.text
        }
    }
    
}



