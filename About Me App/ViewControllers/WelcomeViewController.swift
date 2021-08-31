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
    
    @IBOutlet var userImage: UIImageView!
    //MARK: Properties
    var user: User!

    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoutButton.layer.cornerRadius = 10
        
        welcomeLabel.text = "Welcome, \(user.person.fullName)!"
        userImage.image = UIImage(named: user.person.image)!
    }
}
