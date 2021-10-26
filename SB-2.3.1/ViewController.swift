//
//  ViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard (usernameOutlet.text == "Nik" || usernameOutlet.text == "Nikita"), passwordOutlet.text == "password" else {
            showAlert(title: "Invalid username or password", message: "Please enter correct username and password")
            passwordOutlet.text = ""
            return
        }
        guard let accountVC = segue.destination as? AccountViewController else { return }
        accountVC.username = usernameOutlet.text!
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard let _ = unwindSegue.source as? AccountViewController else { return }
        usernameOutlet.text = ""
        passwordOutlet.text = ""
    }
    
    @IBAction func forgotUsernamePressed() {
        showAlert(title: "Oops!", message: "Your username is Nik or Nikita 🤫")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!", message: "Your password is password 🤔")
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) -> Void {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameOutlet {
            passwordOutlet.becomeFirstResponder()
        } else {
            usernameOutlet.becomeFirstResponder()
            performSegue(withIdentifier: "loginToAccountSegue", sender: nil)
        }
  
        return false
    }
}
