//
//  EditViewController.swift
//  TodoApp
//
//  Created by XiaoQian Huang on 10/18/18.
//  Copyright © 2018 XiaoQian Huang. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var editTextField: UITextField!
    
    var todoList = todo()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addButton(_ sender: Any) {
        if let newTask = editTextField.text{
            if(newTask != "")
            {
                todoList.list!.append(newTask)
                todoList.listMark?.append(-1)
                todoList.taskSave()
                editTextField.text = ""
            }
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func cancelButton(_ sender: Any) {
        if(editTextField.text != "")
        {
            editTextField.text = ""
        }
    }
    
}
