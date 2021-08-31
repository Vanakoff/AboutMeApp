//
//  PhotoViewController.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 01/09/2021.
//

import UIKit

//All Screen created just for practice

class PhotoViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var finishLabel: UILabel!
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.height / 2
        }
    }
    //MARK: Properties
    var user: User!
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "The End;)"
        finishLabel.text = "Made by \(user.person.fullName)"
    }
}
