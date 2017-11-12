//
//  NavTabTableVC.swift
//  Gud-Food
//
//  Created by Amauri Lopez on 11/11/17.
//  Copyright © 2017 Amauri Lopez. All rights reserved.
//

import Foundation

class NavTabTableVC: UITableViewController{
    
    var TableArray = [String]() //array of strings
    
    override func viewDidLoad() {
        TableArray = ["Map View", "Profile"]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableArray[indexPath.row], for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        return cell
    }
    
}
