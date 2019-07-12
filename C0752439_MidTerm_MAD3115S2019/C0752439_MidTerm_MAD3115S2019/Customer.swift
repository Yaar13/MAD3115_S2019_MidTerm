//
//  Customer.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
struct Customer {
    let customerID : String
    var firstName : String
    var lastName : String
    var email : String
    var password : String
    
    var fullName : String{
        return "\(firstName ) \(lastName)"
    }
    
}
