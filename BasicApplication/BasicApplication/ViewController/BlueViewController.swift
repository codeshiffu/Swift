//
//  BlueViewController.swift
//  BasicApplication
//
//  Created by Sarika Thakur on 2021/03/13.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

enum BTNCLICKED : Int {
    case login = 101
    case forgotPassword
}

class BlueViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet weak var usernameTxtFld: UITextField!
    @IBOutlet weak var passwordTxtFld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad Blue")
        
//        usernameTxtFld.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")

    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func loginBtnClicked(_ sender: UIButton) {
        if sender.tag == BTNCLICKED.login.rawValue {
            // Login button
            print("Login Clicked")
            
            // Creating ViewController using Storyboard
            let greenViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "GREEN_VID") as? GreenViewController
            greenViewControllerObj?.testObj = "Test in green controller"
            self.navigationController?.pushViewController(greenViewControllerObj!, animated: true)
            
//            self.view.addSubview((greenViewControllerObj?.view!)!)
            
            
        } else {
            // Creating ViewController using XIB
            //Forgotbutton
            print("Forgot Password Clicked")
            
            let xibViewControllerObj = XIBViewController(nibName: "XIBViewController", bundle: nil)
            self.navigationController?.pushViewController(xibViewControllerObj, animated: false)
        }
        
    }
    
    
    // Life cyscle of View controller
    // Creation of viewctroller + XIB
    // Creation navigation controller
    // Pushing via code
    // All the basic object in UI
    //
  
}


//viewDidLoad Blue
//viewWillAppear
//viewDidAppear
//viewDidLoad Green
//viewWillDisappear Blue
//viewWillAppear Green
//viewDidDisappear
//viewDidAppear Green

//
//
//viewWillDisappear Green
//viewWillAppear
//viewDidDisappear Green
//viewDidAppear


//viewWillDisappear Green
//viewDidDisappear Green
