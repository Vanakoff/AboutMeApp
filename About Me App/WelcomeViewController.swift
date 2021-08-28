//
//  WelcomeViewController.swift
//  Login App
//
//  Created by Andrey Vanakoff on 24/08/2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    //MARK: IB Outlets
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    //MARK: Properties
    var name: String!
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoutButton.layer.cornerRadius = 10
        welcomeLabel.text = name
    }
}