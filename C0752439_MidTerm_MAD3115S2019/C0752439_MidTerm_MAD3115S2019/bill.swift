//
//  Bill.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation
class Bill: Idisplay {
    var BillId: Int?
    var BillDate: Date
    var Billtype: String?
    var TotalBillAmount: Double?
    
    
    init(bID:Int, bDate:Date, bType: String, TbillAmount: Double)
        
    {
        self.BillId = bID
        self.BillDate = bDate
        self.Billtype = bType
        self.TotalBillAmount = TbillAmount
    }
    
    func display() {
        print("Bill Id is Shown as: \(String(describing: self.BillId))")
        print("Bill date is Shown as: \(String(describing: self.BillDate))")
        print("Bill type is Shown as: \(String(describing: self.Billtype))")
        print("Total Bill Amount is Shown as: \(String(describing: self.TotalBillAmount))")    }
    
    
}

