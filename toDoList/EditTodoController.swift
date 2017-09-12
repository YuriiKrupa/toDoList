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
    
    private func showWarningMsg(textMsg: String) {
        let alert = UIAlertController(title: "Warning!", message: textMsg, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var editItemTextArea: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Edit your task"
        editItemTextArea.text = toDoListItems[currentItem.row]
        
    }
    
    @IBAction func saveItemButton(_ sender: Any) {
        print("Save btn tapped")
        if toDoListItems.contains(editItemTextArea.text!) {
          showWarningMsg(textMsg: "АЛЯРМ таке вже єст")
        }else{
            toDoListItems[currentItem.row] = editItemTextArea.text!
        }
        navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func deleteItemButton(_ sender: Any) {
        print("delete btn tapped")
        toDoListItems.remove(at: currentItem.row)
        navigationController?.popViewController(animated: true)
    }
}
