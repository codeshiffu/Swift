//
//  SecondViewController.swift
//  ProtocolView
//
//  Created by Sarika Thakur on 2021/03/20.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dataTableView : UITableView!
    var delegate : Selection?
    
    let dataArr = ["Pune", "Mumbai", "Nagpur", "Nashik"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for controller in (self.navigationController?.viewControllers)! {
            if (controller.isKind(of: ViewController.self)) {
                let obj = controller as! ViewController
//                obj.dataSelected(dataStr: "Test")
            }

        }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DATA_CID", for: indexPath)
        
        cell.textLabel?.text = dataArr[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.dataSelected(dataStr: dataArr[indexPath.row])
//        delegate?.displayData!()
//        delegate?.dataStr = "Test setter"
        self.navigationController?.popViewController(animated: true)
    }

}


