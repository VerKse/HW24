//
//  AlertService.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit

class AlertService{
    
    func alert(title: String, body: String, buttonTtile: String, completion: @escaping () -> Void) -> CustomAlertViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        guard let alertVC = storyboard.instantiateViewController(withIdentifier: "CustomAlertVC") as? CustomAlertViewController else { return CustomAlertViewController() }
        
        alertVC.alertTitle = title
        alertVC.alertBody = body
        alertVC.alertButtonTitle = buttonTtile
        alertVC.alertButtonAction = completion
        
        return alertVC
    }
    
}
