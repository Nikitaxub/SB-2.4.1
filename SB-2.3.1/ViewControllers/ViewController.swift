//
//  ViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
        
    // MARK: - Life circle methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let accountVC = segue.destination as? AccountViewController else { return }
        accountVC.username = usernameOutlet.text!
    }
    
    // MARK: - IB Actions
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        usernameOutlet.text = ""
        passwordOutlet.text = ""
    }
    
    @IBAction func forgotUsernamePressed() {
        showAlert(title: "Oops!", message: "Your username is Nik or Nikita 🤫")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!", message: "Your password is password 🤔")
    }
    
    @IBAction func loginButtonPressed() {
        guard (usernameOutlet.text == "Nik" || usernameOutlet.text == "Nikita"), passwordOutlet.text == "password" else {
            showAlert(title: "Invalid username or password", message: "Please enter correct username and password")
            passwordOutlet.text = ""
            return
        }
    }
    
    // MARK: - Private methods
    private func showAlert(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - Text field delegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameOutlet {
            passwordOutlet.becomeFirstResponder()
        } else {
            usernameOutlet.becomeFirstResponder()
            loginButtonPressed()
            performSegue(withIdentifier: "loginToAccountSegue", sender: nil)
        }
  
        return false
    }
}
