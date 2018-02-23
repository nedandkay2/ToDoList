//
//  AddToDoViewController.swift
//  ToDo List
//
//  Created by Paul James Hearn on 2018-02-22.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    // previousVC variable is the link back to the ToDoTableViewController
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwitch: UISwitch!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        // check to see titleTextField is not nil and unwrap
        if let titleText = titleTextField.text {
            
            toDo.name = titleTextField.text!
            toDo.important = importantSwitch.isOn
            
            previousVC.toDos.append(toDo)
            previousVC.tableView.reloadData()
            
            // function sends user back to todo list screen after
            // clicking add button
            navigationController?.popViewController(animated: true)
        }
        
    }
    
}
