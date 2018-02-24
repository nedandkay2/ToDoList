//
//  CompleteViewController.swift
//  ToDo List
//
//  Created by Paul James Hearn on 2018-02-23.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    @IBOutlet weak var completeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        completeLabel.text = selectedToDo.name
    }
    
    
    @IBAction func completeButtonPressed(_ sender: Any) {
        var index = 0
        for toDo in previousVC.toDos {
            if toDo.name == selectedToDo.name{
               // print("We found it \(toDo.name) Index # \(index)")
                previousVC.toDos.remove(at: index)  // remove item from array
                previousVC.tableView.reloadData()  // refresh the array in the tableView after removing an item
            
                navigationController?.popViewController(animated: true) // function sends user back to todo list screen after user taps complete button
                break  // stop running the loop
            }
            index += 1
            
            
        }
        
    }

}
