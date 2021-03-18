//
//  BasicTableViewController.swift
//  TableView
//
//  Created by Sarika Thakur on 2021/03/17.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class BasicTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var basicTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        basicTableView.delegate = self
        basicTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 5
        } else if section == 1 {
            return 50
        }
        return 1
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        var cell = tableView.dequeueReusableCell(withIdentifier: "BASIC_CID", for: indexPath) as? UITableViewCell
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "BASIC_CID")

        
//        if cell != nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "BASIC_CID")
//        }

        if indexPath.section % 2 == 0 {
            cell.backgroundColor = UIColor.gray
        } else { // section 1
            if indexPath.row % 2 == 0 {
                cell.backgroundColor = UIColor.darkGray
            }
            
        }
//        cell
        
        
        cell.textLabel?.text = "Test"
        cell.detailTextLabel?.text = "This is detail text label of cell"
        cell.accessoryType = .detailButton
        

        return cell

        
//        if let cell = cell {
//        }
        
//        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print(indexPath.row)
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.section)
        print(indexPath.row)
    }
 
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return " Section \(section + 1)"
//    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 50)
        view.backgroundColor = UIColor.yellow
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 50)
        label.text = " Section \(section + 1)"
        
        view.addSubview(label)
        

        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
}
