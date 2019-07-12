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
    @IBOutlet weak var Switch: UISwitch!
    var customers = [Customer]()
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        getCustomersFromPlist()

    }
    @IBAction func BtnLogin(_ sender: UIButton) {
        if let email = Txtusername.text{
            if !email.isEmpty{
                if email.isValidEmail(){
                    if let password = TxtPassword.text{
                        if !password.isEmpty{
                            if (password.count < 6){
                                showAlert(msg: "Size of password must be equal or greater than 6")
                            }else{
                                
                                
                                if isValidUser(email: email, password: password) {
                                    
                                    showAlert(msg: "Login Successful")
                                    //setRememberMe()
                                    
                                    //let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    //let dashboardVC = storyboard.instantiateViewController(withIdentifier: "homeVC") as! CustomersListViewController
                                    
                                    //self.navigationController?.pushViewController(dashboardVC, animated: true)
                                    
                                    
                                }else{
                                    showAlert(msg: "You have entered wrong credentials")
                                }
                            }
                            
                        }else{
                            showAlert(msg: "Please Enter Password")
                        }
                    }
                }
                else{
                    showAlert(msg: "Please Enter Valid Email")
                }
            }else{
                showAlert(msg: "Please Enter Email")
            }
        }
    }
    
    
    func getCustomersFromPlist(){
        let plist = Bundle.main.path(forResource: "Userinfo", ofType: "plist")
        if let dict = NSMutableDictionary(contentsOfFile: plist!){
            print(dict)
            print(dict["Users"])
            if let customersDict = dict["Users"] as? [[String:Any]]
            {
                for customer in customersDict {
                    let id = customer["UserID"] as! String
                    let firstName = customer["UserName"] as! String
                    let lastName = customer["UserName"]  as! String
                    let email = customer["UserEmail"] as! String
                    let password = customer["UserPassword"] as! String
                    self.customers.append(Customer(customerID: id, firstName: firstName, lastName: lastName, email: email, password: password))
                }
            }
        }
        
    }
    func isValidUser(email : String , password : String) -> Bool{
        
        for customer in customers{
            if (customer.email == email && customer.password == password) {
                return true
            }
        }
        return false
    }
    func showAlert(msg : String)  {
        let alertController = UIAlertController(title: "Error", message:
            msg, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
        // Dispose of any resources that can be recreated.
    
    
}


