//
//  LoginViewController.swift
//  GB_iOS_UI_Course
//
//  Created by Alexander Lezin on 15/05/2019.
//  Copyright © 2019 Alexander Lezin. All rights reserved.
//

import UIKit

// MARK: - Globals
let log = "admin"
let pass = "123qwe"

class LoginViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Login
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let checkUser = cerberus()
        
        if !checkUser {
            loginErrorAlarm()
        }
        return checkUser
    }
        
    func cerberus() -> Bool {
            guard let login = loginTextField.text,
                let password = passwordTextField.text else { return false }
            
            if login == log && password == pass {
                return true
            } else {
                return false
            }
        }
        
    func loginErrorAlarm() {
            // Declaring controller
            let alert = UIAlertController(title: "Error", message: "Wrong user data", preferredStyle: .alert)
            // Declaring button for UIAlertController
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            // Add button on UIAlertController
            alert.addAction(action)
            // Show UIAlertController
            present(alert, animated: true, completion: nil)
    }

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tap gesture
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        // Add gesture to UIScrollVIew
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Subscribing to notification: keyboard is shown
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Subscribing to notification: keyboard is hidden
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Removing observers
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }

    // MARK: - Keyboard Resize
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    // When keyboard is about to be shown
    @objc func keyboardWasShown(notification: Notification) {
        
        // Get keyboard size
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Adding indent from bottom of UIScrollView, equal to keyboard size
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    // When keyboard is about to be hidden
    @objc func keyboardWillBeHidden(notification: Notification) {
        
        // Adding indent from bottom of UIScrollView, equal zero
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
}
