//
//  AccountViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 25.10.2021.
//

import UIKit

class AccountViewController : UIViewController {
    
    @IBOutlet var welcomeOutlet: UILabel!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeOutlet.text = "Welcome, \(username)!"
//        let layer = CAGradientLayer()
//        layer.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height / 2)
//        layer.colors = [UIColor.systemPink.cgColor, UIColor.blue.cgColor]
//        view.layer.addSublayer(view.layer.sublayers[0]!)
    }
    
    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
}
