//
//  BiographyViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 31.10.2021.
//

import UIKit

class BiographyController : UIViewController {
    
    @IBOutlet var biographyTextOutlet: UILabel!
    
    override func viewDidLoad() {
        guard let tabBarController = self.tabBarController as? TabBarController else { return }
        biographyTextOutlet.text = tabBarController.user.biography
    }
}
