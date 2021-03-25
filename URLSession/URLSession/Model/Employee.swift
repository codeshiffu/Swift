//
//  Employee.swift
//  URLSession
//
//  Created by Sarika Thakur on 2021/03/25.
//  Copyright © 2021 Sarika Thakur. All rights reserved.
//

import Foundation

//"employee_age" = 61;
//"employee_name" = "Tiger Nixon";
//"employee_salary" = 320800;
//id = 1;
//"profile_image" = "";

//struct Employee {
//    let employee_name, profile_image : String!
//    let employee_age : Int?
//    let employee_salary : Int?
//    let id : Int?
//}
//
//struct employeeData {
//   let data : [Employee]!
//}



struct Employee : Codable {
    let employeeName, profileImage : String!
    let employeeAge : Int?
    let employeeSalary : Int?
    let empId : Int?
    
    enum CodingKeys : String, CodingKey {
        case employeeName = "employee_name"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
        case employeeSalary = "employee_salary"
        case empId = "id"
    }
}

struct EmployeeData : Decodable{
    let data : Employee?
    let status: String?
    let message: String?
}

struct EmployeesData : Decodable{
    let data : [Employee]?
    let status: String?
    let message: String?
}

struct UserDetail : Encodable  {
//    let name : String
//    let age : String
//    let profilePicture : String
    
    
    let name, age, profilePicture : String
}



