//
//  NavigationController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 31.10.2021.
//

import UIKit

class NavigationController : UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tabBarController = self.tabBarController as? TabBarController else { return }
        self.navigationBar.items![0].title = tabBarController.user.fullname
    }
}
