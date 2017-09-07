//
//  EditTodoController.swift
//  toDoList
//
//  Created by ITA student on 9/6/17.
//  Copyright © 2017 Yurii Kupa. All rights reserved.
//

import UIKit

class EditTodoController: UIViewController {
    
    var currentItem : IndexPath = IndexPath()
    
    @IBOutlet weak var editItemTextArea: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Edit your task"
        editItemTextArea.text = toDoListItems[currentItem.row]
        
    }
    
    @IBAction func saveItemButton(_ sender: Any) {
        print("Save btn tapped")
        toDoListItems[currentItem.row] = editItemTextArea.text
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func deleteItemButton(_ sender: Any) {
        print("delete btn tapped")
        toDoListItems.remove(at: currentItem.row)
        navigationController?.popViewController(animated: true)
    }
}
