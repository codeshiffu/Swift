//
//  StaticTableViewController.swift
//  TableView
//
//  Created by Sarika Thakur on 2021/03/18.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class StaticTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section)
        print(indexPath.row)
    }

    @IBAction func notificationBtnClicked (_ sender: UISwitch)
    {
        print(sender.isOn)
    }
    

}
