//
//  Customer.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
class Customer {
    func Idisplay() {
    }
    
    
    let Customerid: Int?
    var First_name: String?
    var Last_name: String?
    var Full_name: String?
    var Email_id: String?
    var Total_amout: Float?
    var bill_dictionary=Dictionary<Int,Double>()
    
    private static var Bill_dictionary=Dictionary<Int,Float>()
    
    private static var customerList=[Int:Customer]()
    
    init(Cust_id: Int,ful_name: String,Last_name: String,E_id: String,Tot_amt: Float) {
        self.Customerid = Cust_id
        self.First_name = ful_name
        self.Last_name = Last_name
        self.Email_id = E_id
        self.Total_amout = Tot_amt
    }
    
    static func CustomerDetail(customer: Customer) {
        
        customerList.updateValue(customer,forKey: customer.Customerid!)
        
    }
    
    static func getCustomerById(cust_id:Int) -> Customer? {
        if let cust = customerList[cust_id] {
            return cust as Customer
        }
            
            
            
        else
        {
            return nil
            
            
        }
        
    }
    
    func createFullName(){
        
        print("Customer Full Name : \(self.First_name!) \(self.Last_name!)")
        
    }
    
    func display() {
        print("customer ID is: \(String(describing: self.Customerid!))")
        print("Customer first name is : \(String(describing: self.First_name))")
        print("Customer last name is : \(String(describing: self.Last_name))")
        print("customer Email is: \(String(describing: self.Email_id))")
        
    }
}

