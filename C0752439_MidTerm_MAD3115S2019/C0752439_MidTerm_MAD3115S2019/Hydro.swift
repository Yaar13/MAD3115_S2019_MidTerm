//
//  Hydro.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation

class Hydro: Bill
{
    var agencyName: String
    var unitconsumed: Int
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float, agencyName: String, unitconsumed: Int)
    {
        self.agencyName = agencyName
        self.unitconsumed = unitconsumed
        
        super.init(Id: Id, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
}
