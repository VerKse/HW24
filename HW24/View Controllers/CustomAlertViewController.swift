//
//  CustomAlertView.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit

class CustomAlertViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet var alertView: [UIView]!
    
    var alertTitle = String()
    var alertBody = String()
    var alertButtonTitle = String()
    var alertButtonAction: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alertView.forEach {
            $0.layer.cornerRadius = 15
            $0.layer.borderWidth = 2
            $0.layer.borderColor = #colorLiteral(red: 0.05490196078, green: 0.462745098, blue: 0.8156862745, alpha: 1)
        }
        
        titleLabel.text = alertTitle
        bodyLabel.text = alertBody
        button.setTitle(alertButtonTitle, for: .normal)
        
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        alertButtonAction?()
        dismiss(animated: true)
    }
    
}
 
