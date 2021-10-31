//
//  TabBarViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 31.10.2021.
//

import UIKit

class TabBarController : UITabBarController {
    
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.items?[1].title = user.fullname
        self.tabBar.unselectedItemTintColor = UIColor.black
    }
}
