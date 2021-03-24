//
//  ViewController.swift
//  ProtocolView
//
//  Created by Sarika Thakur on 2021/03/20.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

 protocol Selection   {
//    var dataStr : String { get set }
    func dataSelected (dataStr : String) // Required
    func displayData ()
}

//struct protocolTest : Selection {
//}

@objc class ViewController: UIViewController, Selection, UITableViewDelegate {
//    var dataStr: String
    
//    var dataStr: String = ""

    @IBOutlet weak var textFld: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func nextBtnClicked(_ sender : UIButton) {
        let secondVCObj = self.storyboard?.instantiateViewController(withIdentifier: "SECONDSCREEN_VID") as? SecondViewController
        
        secondVCObj?.delegate = self
        
        if let secondVCObj = secondVCObj {
            self.navigationController?.pushViewController(secondVCObj, animated: true)
        }
    }
    

    func dataSelected(dataStr : String) {
        textFld.text = dataStr
        print("Data selected")
    }
//
//    func displayData() {
//        print("Data is displayed")
//    }

}


extension Selection {
    func dataSelected (dataStr : String){
        print(dataStr)
    }
    
    func displayData() {
        
    }
}
