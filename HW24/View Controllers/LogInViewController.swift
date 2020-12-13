//
//  ViewController.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 12.12.2020.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIImageView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(LogInViewController.logInTapped(gesture:)))
        logInButton.addGestureRecognizer(tapGesture)
        
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    @objc func logInTapped(gesture: UIGestureRecognizer) {
        if (gesture.view as? UIImageView) != nil {
            logIn()
        }
    }
    
    @IBAction func registerAction(_ sender: Any) {
        performSegue(withIdentifier: "showRegister", sender: nil)
    }
    
    @IBAction func testAction(_ sender: Any) {
        print(emailField.text ?? "empty")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let destinationVC = tabBarController.viewControllers?.first as? ProfileViewController else { return }
        destinationVC.senderText = sender as? String
    }
    
    func logIn(){
        print("login")
        performSegue(withIdentifier: "showProfile", sender: emailField.text)
    }
}

