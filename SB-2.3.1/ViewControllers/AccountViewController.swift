//
//  AccountViewController.swift
//  SB-2.3.1
//
//  Created by xubuntus on 25.10.2021.
//

import UIKit

class AccountViewController : UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = self.tabBarController as? TabBarController else { return }
        let backItem = UIBarButtonItem()
        backItem.title = tabBarController.user.fullname
        navigationItem.backBarButtonItem = backItem
    }
}
