//
//  OrangeViewController.swift
//  BasicApplication
//
//  Created by Sarika Thakur on 2021/03/13.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var sliderValueLbl: UILabel!
    
    @IBOutlet weak var stepperValueLbl: UILabel!
    
    @IBOutlet weak var switchValueLbl: UILabel!
    
    
    var counter = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        progressBar.frame = CGRect(x: <#T##CGFloat#>, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 5)
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.navigationItem.hidesBackButton = true
//        self.navigationController?.navigationBar.isHidden = true
        backButton.setTitleColor(UIColor.black, for: .normal)
    }
    
    override func viewDidAppear(_ animated: Bool) {
          self.navigationController?.navigationBar.isHidden = true
    }
    @IBAction func backBtnClicked(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func homeBtnClicked(_ sender: Any) {
        print(self.navigationController?.viewControllers)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func valueChangedForSlider(_ sender: UISlider) {
        print(sender.value)
        let value = Int(sender.value)
        sliderValueLbl.text = "\(value)"
    }
    
    @IBAction func valueChangedForSwitch(_ sender: Any) {
        
        let switchValue = sender as! UISwitch
        if switchValue.isOn {
            switchValueLbl.text = "ON"
        } else {
            switchValueLbl.text = "OFF"
        }
        
    }
    
    
    @IBAction func startBtnClicked(_ sender: UIButton) {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
        
        counter = counter + 0.2
        progressBar.setProgress(Float(counter), animated: true)
        
        
    }
    
    @IBAction func stopBtnClicked(_ sender: UIButton) {
        activityIndicator.hidesWhenStopped = true
        activityIndicator.stopAnimating()
    }
    
    @IBAction func valueChangedForStepper(_ sender: Any) {
        
        
        if let stepper = sender as? UIStepper {
            stepperValueLbl.text = ("\(Int(stepper.value))")
        }
        
    }
}
