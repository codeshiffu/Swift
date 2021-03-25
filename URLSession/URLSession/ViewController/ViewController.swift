//
//  ViewController.swift
//  URLSession
//
//  Created by SarikaThakur on 2021/03/25.
//  Copyright © 2021 SarikaThakur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var emp : Employee!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        if checkNetworkConnnection() {
            getData()
            
            getAPIDataViaDecodable()
            
        } else {
            // Add Alert View for error : NO Internet Connection
        }
    }
    
    func checkNetworkConnnection() -> Bool {
        let reachability = Reachability.forInternetConnection()
        if let reachability = reachability {
            if reachability.isReachableViaWiFi() || reachability.isReachableViaWWAN() {
                return true
            }
        }
        return false
    }
    
    func getData() {
        
        let urlStr = "http://dummy.restapiexample.com/api/v1/employees"
        let url = URL(string: urlStr)
        var request = URLRequest(url: url!)
        request.httpMethod = "POST"
        
        let dict = ["name" : "", "age": "", "profilePicture" : ""]
        do {
            let dictData = try JSONSerialization.data(withJSONObject: dict, options: [])
            request.httpBody = dictData
            
        } catch {
            
        }
        
        request.addValue("application/JSON", forHTTPHeaderField: "Content-type")
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            guard let data = data, error == nil else {
                print(error.debugDescription)
                return
            }
            //            print("Data Fetched: \(data)")
            
            
            DispatchQueue.main.async {
                do {
                    
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    
                    //                    print(json)
                    //                if let  jsonData = json?["data"] as? [String : Any]  {
                    //
                    //                    let nameStr = (jsonData["employee_name"] as? String)
                    //                    let profileStr = (jsonData["profile_image"] as? String)
                    //                    let empAge = (jsonData["employee_age"] as? Int)
                    //
                    //                    self.emp = Employee(employee_name: nameStr,
                    //                                        profile_image: profileStr,
                    //                                        employee_age : empAge,
                    //                                        employee_salary: (jsonData["employee_salary"] as? Int),
                    //                                        id: (jsonData["id"] as? Int) )
                    //                    print(self.emp.employee_name)
                    //                    print(self.emp.profile_image)
                    //                }
                    
                } catch  {
                }
                
            }
            
        })
        task.resume()
        
    }
    
    
    
    
    func getAPIDataViaDecodable() {
        
        let urlStr = "http://dummy.restapiexample.com/api/v1/employees"
        let url = URL(string: urlStr)
        let request = URLRequest(url: url!)
        
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) in
            guard let data = data, error == nil else {
                print(error.debugDescription)
                return
            }
            let str = String(decoding: data, as: UTF8.self)
            //            print(str)
            DispatchQueue.main.async {
                do {
                    
                    let decode = JSONDecoder()
                    let employeeDetail = try decode.decode(EmployeesData.self, from: data)
                    
                    if let empData = employeeDetail.data {
                        for eachEmp in empData {
                            print(eachEmp.employeeName)
                        }
                    }
                    
                } catch let catchError{
                    print(catchError.localizedDescription)
                }
                
            }
            
        })
        task.resume()
        
    }
}

