//
//  ViewController.swift
//  Todoey
//
//  Created by VINCENT G GREEN on 4/14/19.
//  Copyright © 2019 VINCENT G GREEN. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["find Mike", "Buy Eggos", "Demi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
// Mark - Tableview DataSource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
    
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //Mark- TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
        
        
     
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView .deselectRow(at: indexPath, animated: true)
        
        
    }
    
    
    
    
}

