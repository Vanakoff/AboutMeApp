//
//  UserInfoViewController.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 29/08/2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    //MARK: IB Outlets
    @IBOutlet var userInfoLabel: UILabel!
    //MARK: Properties
    var userInfo = ""
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfoLabel.text = userInfo
    }
}
