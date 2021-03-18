//
//  GreenViewController.swift
//  BasicApplication
//
//  Created by Sarika Thakur on 2021/03/13.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    var testObj : String!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(testObj)
        print("viewDidLoad Green")
        self.view.backgroundColor = UIColor.black


        // Do any additional setup after loading the view.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.yellow

        print("viewWillAppear Green")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.backgroundColor = UIColor.gray
        print("viewDidAppear Green")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear Green")
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear Green")
        
    }
    
    @IBAction func valueChangedForSegmentControl(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            print("First")
        }
        else if sender.selectedSegmentIndex == 1 {
            print("Second")
        }
        else {
            print("Third")
        }
    }
    
    
    
}
