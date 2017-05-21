//
//  TasksViewController.swift
//  doit
//
//  Created by Joshua Martin on 5/21/17.
//  Copyright © 2017 Joshua Martin. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!

    var tasks : [task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tasks = makeTasks()
        
        tableview.dataSource = self
        tableview.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "😱\(task.name)"
        }
        else{
        cell.textLabel?.text = task.name
        }
        return cell
        
    }
    
    func makeTasks() -> [task] {
        let task1 = task()
        task1.name = "Code"
        task1.important = false
        
        let task2 = task()
        task2.name = "Walk Dog"
        task2.important = false
        
        let task3 = task()
        task3.name = "Pay rent"
        task3.important = true
        
        return [task1, task2, task3]
        
    }
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! CreateTaskViewController
        nextVC.previousVC = self
        
    }
}



