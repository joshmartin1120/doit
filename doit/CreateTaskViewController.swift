//
//  CreateTaskViewController.swift
//  doit
//
//  Created by Joshua Martin on 5/21/17.
//  Copyright © 2017 Joshua Martin. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: UITextField!

    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let newtask = task()
        newtask.name = taskNameTextField.text!
        newtask.important = importantSwitch.isOn
        //Create task from outlet
        
    
    }


}