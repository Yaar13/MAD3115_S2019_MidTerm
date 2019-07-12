//
//  Hydro.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
class Hydro: Bill {
    var AgencyName: String?
    var UnitsConsumed: String
    init(BillId: Int,BillDate: Date,BillType:String,Aname: String, Uconsumed: String)
    {
        self.AgencyName = Aname
        self.UnitsConsumed = Uconsumed
        super.init(BillId: BillId, BillDate: BillDate, BillType: Billtype)
    }
    override func display() {
        print(self.AgencyName!,self.UnitsConsumed)
        
    }
}
