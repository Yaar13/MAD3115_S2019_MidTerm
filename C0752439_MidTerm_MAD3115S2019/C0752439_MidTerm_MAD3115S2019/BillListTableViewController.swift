//
//  BillListTableViewController.swift
//  C0752439_MidTerm_MAD3115S2019
//
//  Created by Gurparkash Kaur on 2019-07-12.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import UIKit

class BillListTableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var userList: UITableView!
    
    
    
    
    var customers = [Customer]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getCustomersFromPlist()
        self.userList.delegate = self
        self.userList.dataSource = self
    }
    func getCustomersFromPlist(){
        
        let plist = Bundle.main.path(forResource: "Users", ofType: "plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: plist!){
            if let customers = dict["Users"] as? [[String:Any]]
            {
                for customer in customers {
                    let UserId = customer["UserID"] as! String
                    let firstName = customer["UserName"] as! String
                    let lastName = customer["UserName"] as! String
                    let UserEmail = customer["UserEmail"] as! String
                    let UserPassword = customer["UserPassword"] as! String
                    
                    self.customers.append(Customer(customerID: UserId, firstName: firstName, lastName: lastName, email: UserEmail, password: UserPassword))
                }
            }
        }
        
    }
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "users")
        
        cell?.textLabel?.text = self.customers[indexPath.row].fullName
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(customers[indexPath.row].firstName)
    }
    
    
}
