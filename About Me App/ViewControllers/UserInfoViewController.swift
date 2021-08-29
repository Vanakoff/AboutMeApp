//
//  UserInfoViewController.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 29/08/2021.
//

import UIKit

class UserInfoViewController: UIViewController {

    
    @IBOutlet var userInfoLabel: UILabel!
    
   var userInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userInfoLabel.text = userInfo
    }
    



}
