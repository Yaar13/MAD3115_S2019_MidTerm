//
//  Mobile.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
class Mobile: Bill
{
    var mobileManufacturer: String
    var planName: String
    var mobileNumber: String
    var internetUsed: Int
    var minuteUsed: Int
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float, mobileManufacturer: String, planName: String, mobileNumber: String, internetUsed: Int, minuteUsed: Int)
    {
        self.mobileManufacturer = mobileManufacturer
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetUsed = internetUsed
        self.minuteUsed = minuteUsed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
