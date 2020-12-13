//
//  TaskViewController.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet weak var showAlertButton: UIButton!
    
    let alertService = AlertService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showAlertButton.layer.cornerRadius = 15
    }
    

    @IBAction func showAlert(_ sender: Any) {
        let alertVC = alertService.alert(title: "Perfect", body: "You have made custom alert view", buttonTtile: "Celebrate!") {
            print("great 🎉🎉🎉")
        }
        
        present(alertVC, animated: true)
    }
    
}
