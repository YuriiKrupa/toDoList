//
//  ViewController.swift
//  toDoList
//
//  Created by ITA student on 9/1/17.
//  Copyright © 2017 Yurii Kupa. All rights reserved.
//

import UIKit

var toDoListItems = [String]()


class ViewController: UITableViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let todo : String = toDoListItems[indexPath.row]
        cell.textLabel?.text = todo
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .normal, title: "DELETE") { action, index in
            print("button delete tapped")
            toDoListItems.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
            delete.backgroundColor = UIColor.red
        
        let star = UITableViewRowAction(style: .normal, title: "Star") { action, index in
            print("button star tapped")
        }
            star.backgroundColor = UIColor.orange
        
        return [delete, star]
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        print("del")
    }
    
}

