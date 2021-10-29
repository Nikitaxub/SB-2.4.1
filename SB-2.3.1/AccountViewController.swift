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
    }
    
}
