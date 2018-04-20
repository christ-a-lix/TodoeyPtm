//
//  ViewController.swift
//  Todoey
//
//  Created by Alix Christa kaze on 2018-03-22.
//  Copyright © 2018 planstomake. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    var itemArray = ["Grocery", "Laundry", "Finish Todoey app"]
    
    @IBOutlet var ItemTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //MARK - TableView Datasource methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cellValue = itemArray[indexPath.row]
        
        print(cellValue)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
            
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK - Add New Items
    

    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
     var textField = UITextField()
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)

        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //What will happen when button pressed in Alert
            self.itemArray.append(textField.text!)
            
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

