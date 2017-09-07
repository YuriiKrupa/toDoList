//
//  InputTodoController.swift
//  toDoList
//
//  Created by ITA student on 9/4/17.
//  Copyright © 2017 Yurii Kupa. All rights reserved.
//

import UIKit

class InputTodoController: UIViewController {
    
    @IBOutlet weak var todoInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Create new task"
        
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        if todoInput.text != "" {
            let todo : String = todoInput.text!
            toDoListItems.append(todo)
            todoInput.text = nil
            _ = navigationController?.popViewController(animated: true)
        }
    }
    
}
