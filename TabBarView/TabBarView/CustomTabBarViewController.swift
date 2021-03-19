//
//  CustomTabBarViewController.swift
//  TabBarVIew
//
//  Created by Sarika Thakur on 2021/03/19.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let controller = self.viewControllers
        
        for VC in controller! {
            print(VC)

            if VC.isKind(of:SettingTableViewController.self ) {
                self.viewControllers?.remove(at: 4)
            }
        }
    }
    


}
