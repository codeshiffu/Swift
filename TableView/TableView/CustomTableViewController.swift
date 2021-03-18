//
//  CustomTableViewController.swift
//  TableView
//
//  Created by Sarika Thakur on 2021/03/17.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit


class CustomTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var customTableView : UITableView!
    
    var nameiPadArr = ["iPad min", "iPad 8","iPad 8 Plus", "iPad X", "iPad XR", "iPad 11", "iPad 12"]
    var nameArr = ["iPhone 7", "iPhone 8","iPhone 8 Plus", "iPhone X", "iPhone XR", "iPhone 11", "iPhone 12"]
    var descriptionArr = ["", "Old iPhone", "Old iPhone", "Old iPhone", "Old iPhone", "New iPhone", "New iPhone",]
    var priceArr = [nil, 50000,60000,70000,80000,90000,90000]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        customTableView.delegate = self
        customTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return nameiPadArr.count
        }
        return nameArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == customTableView{
            
        }
        let customCell = tableView.dequeueReusableCell(withIdentifier: "CUSTOM_CID", for: indexPath) as! CustomTableViewCell
//        if indexPath.section == 0 {
//            customCell.nameLbl.text = "Name : \(nameiPadArr[indexPath.row])"
//        } else {
//            customCell.nameLbl.text = "Name : \(nameArr[indexPath.row])"
//        }
        
        let nameStr = indexPath.section == 0 ? nameiPadArr[indexPath.row] : nameArr[indexPath.row]
        
        
        
        customCell.nameLbl.text = "Name : \(nameStr)"
        customCell.descriptionLbl.text = "Description : \(descriptionArr[indexPath.row])"
        customCell.priceLbl.text = "Price : \(priceArr[indexPath.row])"
        customCell.buyNowBtn.addTarget(self, action: #selector(buyNowBtnClicked(_:)), for: .touchUpInside)
        customCell.buyNowBtn.tag = indexPath.row
        
        return customCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "iPad"
        }
        return "iPhone"
    }

    
     @objc func buyNowBtnClicked(_ sender : UIButton) {
        print(sender.tag)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let objBuyNowVC = self.storyboard?.instantiateViewController(withIdentifier: "BUYNOW_VID") as? BuyNowViewController
        if let objBuyNowVC = objBuyNowVC {
            
            var dict : [String : Any] = [:]
        
            dict["name"] = indexPath.section == 0 ? nameiPadArr[indexPath.row] : nameArr[indexPath.row]
            
            dict["description"] = descriptionArr[indexPath.row] == "" ? "This product has no description" : descriptionArr[indexPath.row] 
            dict["price"] = priceArr[indexPath.row]
            
            objBuyNowVC.dict = dict
            
            self.navigationController?.pushViewController(objBuyNowVC, animated: true)
            
        }
        
    }
}
