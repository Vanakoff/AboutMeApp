//
//  LoginViewController.swift
//  Login App
//
//  Created by Andrey Vanakoff on 24/08/2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    //MARK: Private properties
    private let username = "User"
    private let password = "Password"
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.layer.cornerRadius = 10
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(notification:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)
    }
    //MARK: Navigation
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userVC = segue.destination as? WelcomeViewController else { return }
        userVC.name = "Welcome, \(usernameTextField.text ?? " ")!"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    //MARK: IB Actions
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(title: "Ooops!", message: "Username is User 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Ooops!", message: "Password is Password 😉")
    }
    // MARK: Keyboard Actions
    @objc private func keyboardWillShow(notification: NSNotification) {
        guard let _: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?
                NSValue else { return }
        view.frame.origin.y = -100
    }
    
    @objc private func keyboardWillHide() {
        self.view.frame.origin.y = 0
    }
    
    override func touchesBegan(_ touches: Set<UITouch>,
                               with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
// MARK: Private Methods: Alert
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

