//
//  PhotoViewController.swift
//  About Me App
//
//  Created by Andrey Vanakoff on 29/08/2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var testLabel: UILabel!
    //MARK: Properties
    var userImage = UIImage()
    var photoLabel = ""
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = userImage
        testLabel.text = photoLabel
    }
}
