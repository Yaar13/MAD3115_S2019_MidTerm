//
//  User.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
class User
{
    static var USER_ID_COUNTER : Int = 0
    var userId : Int = 0
    var email : String = ""
    var password : String = ""
    static var customers : [Int:Customer] = [:]
    init()
    {
        self.userId = User.USER_ID_COUNTER + 1
        self.email = ""
        self.password = ""
        
    }
    init(email : String,password : String)
    {
        self.userId = User.USER_ID_COUNTER + 1
        self.email = email
        self.password = password
    }
    
    static func addCustomer(customer : Customer)
    {
        customers.updateValue(customer, forKey: customer.customerid)
        print("Added customer in User Class")
    }
    
    static func deleteCustomer(customerId : Int)
    {
        customers.removeValue(forKey: customerId)
        print("Customer removed in User class")
    }
}
