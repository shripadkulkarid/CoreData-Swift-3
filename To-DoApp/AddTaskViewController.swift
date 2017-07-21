//
//  AddTaskViewController.swift
//  To-DoApp
//
//  Created by Apple on 13/07/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit
import CoreData

class AddTaskViewController: UIViewController {

    @IBOutlet weak var taskField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func add(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
       
        let task = Task(context: context)
        
        task.name = taskField.text!
        
        //Save To data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        _ = navigationController?.popViewController(animated: true)
        
        
    }
    
    
    
    
    
    
    
    
    
}
