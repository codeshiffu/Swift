//
//  ViewController.swift
//  TabBarView
//
//  Created by SarikaThakur on 2021/03/19.
//  Copyright © 2021 SarikaThakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func loginBtnClicked(_ sender : UIButton) {
        let customTabBarVC = self.storyboard?.instantiateViewController(withIdentifier: "CUSTOMTABBAR_VID") as? CustomTabBarViewController
        
        self.navigationController?.pushViewController(customTabBarVC!, animated: true)
    }
    
    
}

