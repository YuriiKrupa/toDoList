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
    
    private func showWarningMsg(textMsg: String) {
        let alert = UIAlertController(title: "Warning!", message: textMsg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        
        if todoInput.text != "" {
            let todo : String = todoInput.text!
            toDoListItems.contains(todo) ? showWarningMsg(textMsg: "АЛЯРМ") : toDoListItems.append(todo)
            todoInput.text = nil
            navigationController?.popViewController(animated: true)
        }
    }
    
}
