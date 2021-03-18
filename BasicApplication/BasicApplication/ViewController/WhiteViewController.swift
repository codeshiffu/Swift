//
//  WhiteViewController.swift
//  BasicApplication
//
//  Created by Sarika Thakur on 2021/03/15.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class WhiteViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var dateTxtFld: UITextField!
    
    
    
    var countryArr = ["India", "USA", "England"]
    var cityArr = ["Delhi", "Pune" ,"Canada", "London"]
    
    var selectedCountry = "India"
    var selectedCity = "Delhi"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        picker.delegate = self
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return countryArr.count
        } else {
            return cityArr.count
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return "Test"
        
        if component == 0 {
            return countryArr[row]
        } else {
            return cityArr[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            selectedCountry = countryArr[row]
        } else {
            selectedCity = cityArr[row]
        }
        
        print("User Selected : Country is \(selectedCountry) and City is \(selectedCity)")
        
    }
    
    
    @IBAction func getDateBtnClicked(_ sender: UIButton) {
        let dateformatter = DateFormatter()
//        dateformatter.dateStyle = .short
        dateformatter.dateFormat = "dd/MM/yyyy"
        dateTxtFld.text = dateformatter.string(from: datePicker.date)
    }

}
