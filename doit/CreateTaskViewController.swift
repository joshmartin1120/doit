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
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
        //Create task from outlet
        
        navigationController!.popViewController(animated: true)
        //Pop Back
        
    
    }


}
