//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by Paul James Hearn on 2018-02-21.
//  Copyright © 2018 Paul James Hearn. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDo] = [] // create the array toDos and with a type of ToDo  because we are creating an empty array
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
       
    }
// this function populates the array toDos
    func createToDos() -> [ToDo] {
        
        let eggs = ToDo()
        eggs.name = "Buy Eggs"
        eggs.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        let cheese = ToDo()
        cheese.name = "Eat cheese"
        
        let milk = ToDo()
        milk.name = "Buy milk"
        milk.important = true
        
        return [eggs, dog, cheese, milk]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return toDos.count  // get number of rows in array
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "hello"
        return cell
    }

}