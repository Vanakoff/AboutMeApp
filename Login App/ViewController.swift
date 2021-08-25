//
//  ViewController.swift
//  Login App
//
//  Created by Andrey Vanakoff on 24/08/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    let username = "User"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShow(notification:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification) {
        guard let _: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?
                NSValue else { return }
        self.view.frame.origin.y = -100
    }

    @objc private func keyboardWillHide() {
        self.view.frame.origin.y = 0
    }
    
    @IBAction private func loginButtonPressed() {
        if usernameTextField.text == username &&
            passwordTextField.text == password {
            performSegue(withIdentifier: "user", sender: nil)
        } else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            passwordTextField.text?.removeAll()
        }
    }
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(title: "Ooops!", message: "Username is User 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Ooops!", message: "Password is Password 😉")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userVC = segue.destination as? UserViewController else { return }
        userVC.name = "Welcome, \(usernameTextField.text ?? " ")!"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

// MARK: - private methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

