//
//  UserViewController.swift
//  Login App
//
//  Created by Andrey Vanakoff on 24/08/2021.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logoutButton.layer.cornerRadius = 10
        welcomeLabel.text = name
    }
    
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
    
}
