//
//  ProfileViewController.swift
//  HW24
//
//  Created by Вера Ксенофонтова on 13.12.2020.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var senderText: String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = senderText 
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
