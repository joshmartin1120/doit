//
//  CompleteTaskViewController.swift
//  doit
//
//  Created by Joshua Martin on 5/29/17.
//  Copyright © 2017 Joshua Martin. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    @IBOutlet weak var taskLabel: UILabel!

    var task : task? = nil
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if task!.important {
            taskLabel.text = "😱\(task?.name)"
        }
        else{
            taskLabel.text = task?.name
    }
    func completeTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableview.reloadData()
        navigationController!.popViewController(animated: true)
    }
}
}
