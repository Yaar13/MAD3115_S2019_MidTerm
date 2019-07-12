//
//  ViewController.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-11.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Txtusername: UITextField!
    @IBOutlet weak var TxtPassword: UITextField!
    @IBAction func BtnLogin(_ sender: UIButton) {
         performSegue(withIdentifier: "segueElectricirtyBillScreen", sender: self)
        
    }
    @IBOutlet weak var Switch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


