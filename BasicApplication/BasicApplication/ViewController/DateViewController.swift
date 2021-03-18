//
//  DateViewController.swift
//  BasicApplication
//
//  Created by Sarika Thakur on 2021/03/15.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class DateViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var dateTxtFld: UITextField!
    let datePicker = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dateTxtFld.delegate = self
        
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        // Nav, toolbar
        let getDate = UIBarButtonItem(title: "Get Date", style: .done, target: nil, action: #selector(getDateBtnClicked))

        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneBtnClicked))

        
        toolBar.setItems([getDate,doneBtn], animated: true)
        
        datePicker.datePickerMode = .date


        dateTxtFld.inputView = datePicker
        dateTxtFld.inputAccessoryView = toolBar
        
        
        let normalBtn = UIButton(frame: CGRect(x: 0, y: 50, width: 30, height: 100))
        normalBtn.setTitle("Test", for: .normal)
        normalBtn.setTitleColor(UIColor.black, for: .normal)
        //        self.view.addSubview(normalBtn)


        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        getDateBtnClicked()
    }
    
   @objc func getDateBtnClicked() {
        let dateformatter = DateFormatter()
        //        dateformatter.dateStyle = .short
        dateformatter.dateFormat = "dd/MM/yyyy"
        dateTxtFld.text = dateformatter.string(from: datePicker.date)
    }
    
    @objc func doneBtnClicked() {
        dateTxtFld.endEditing(true)
    }
    


}
