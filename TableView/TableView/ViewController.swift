//
//  ViewController.swift
//  TableView
//
//  Created by SarikaThakur on 2021/03/18.
//  Copyright © 2021 SarikaThakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Creating Navigation Controller bar buttons
        let navBtn1 = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: nil)
        let navBtn2 = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showAlert))
        let navBtn3 = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(showActionSheet))
        
        self.navigationItem.rightBarButtonItems = [navBtn1, navBtn3]
        self.navigationItem.leftBarButtonItem = navBtn2
        self.title = "Home Screen"
        
        
    }
    
    @objc func addBtnClicked() {
        print("Add button Clicked")
    }
    
    // Show AlertView
    @objc func showAlert() {
        
        var nameTxtFld = UITextField()
        
        let alertView = UIAlertController(title: "Error", message: "Please enter correct password.", preferredStyle: .alert)
        
        let okActionBtn = UIAlertAction(title: "Ok", style: .default) { (action) in
            print(nameTxtFld.text)
            print(action.title)
            print("Ok button is clicked")
        }
        
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertView.addAction(okActionBtn)
        alertView.addAction(cancelBtn)
        
        
        alertView.addTextField { (txtFld) in
            nameTxtFld = txtFld
            //            return txtFld
        }
        
        self.present(alertView, animated: true) {
            print("Alert View is presented")
        }
    }
    
    
    @objc func showActionSheet() {
        
        let actionSheet = UIAlertController(title: "Photo", message: "Add picture", preferredStyle: .actionSheet)
        let takePhotoBtn = UIAlertAction(title: "Camera", style: .default, handler: nil)
        let choosePhotoBtn = UIAlertAction(title: "Open Gallery", style: .default, handler: nil)
        let cancelBtn = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        actionSheet.addAction(takePhotoBtn)
        actionSheet.addAction(choosePhotoBtn)
        actionSheet.addAction(cancelBtn)
        
        self.present(actionSheet, animated: true, completion: nil)
        
        
        
    }
    
    
    @IBAction func addCustomerAlertView(_ sender: UIButton) {
        // Add Subview for Custom Alert
        let objCustomAlertView = self.storyboard?.instantiateViewController(withIdentifier:
            "ALERT_VID") as? CustomAlertViewViewController
        
        //        objCustomAlertView?.view.frame = CGRect(x: 100, y: 100, width: 375 , height: 300)
        //        self.view.addSubview((objCustomAlertView?.view)!)
        
        present(objCustomAlertView!, animated: true)
        //        self
        
    }
}

