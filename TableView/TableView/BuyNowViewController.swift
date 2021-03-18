//
//  BuyNowViewController.swift
//  TableView
//
//  Created by Sarika Thakur on 2021/03/18.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class BuyNowViewController: UIViewController {

    @IBOutlet weak var nameLbl : UILabel!
    @IBOutlet weak var descriptionLbl : UILabel!
    @IBOutlet weak var priceLbl : UILabel!
    @IBOutlet weak var buyNowBtn : UIButton!

    var dict : [String: Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let name = dict["name"] as? String {
            nameLbl.text = name
        }
        
        if let description = dict["description"] as? String {
            descriptionLbl.text = description
        }
        
        if let price = dict["price"] as? Int {
            priceLbl.text = "\(price)"
            
        } else {
            priceLbl.text = "Nil"
            buyNowBtn.isEnabled = false
        }
        
        

    }
    

   

}
