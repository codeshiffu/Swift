//
//  CustomTableViewCell.swift
//  TableView
//
//  Created by Sarika Thakur on 2021/03/17.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLbl : UILabel!
    @IBOutlet weak var descriptionLbl : UILabel!
    @IBOutlet weak var priceLbl : UILabel!
    @IBOutlet weak var buyNowBtn : UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
