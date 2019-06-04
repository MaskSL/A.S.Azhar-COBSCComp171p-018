//
//  AddNewNoteViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/2/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit

class AddNewNoteViewController: UIViewController {
    
    
    @IBOutlet weak var titleTxtField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Add Homework"
        
    }
    
    //When Add Task cliceked
    @IBAction func addButtonTap(_ sender: Any) {
        //Set the texts from the text fields.
        let homeWork = HomeWorkModel(title: titleTxtField.text ?? "", desc: descTextField.text ?? "")
        
        //Declare variable to read saved tasks from key savedHomeworks
        var savedList = UserDefaults.standard.decode(for: [HomeWorkModel].self, using: "savedHomeworks")
        
        //If there are no saved tasks then add new
        if (savedList == nil) {
            UserDefaults.standard.encode(for:[homeWork], using: "savedHomeworks")
        } else {
            //If there were previously saved tasks then append new task to the array
            savedList?.append(homeWork)
            UserDefaults.standard.encode(for:savedList, using: "savedHomeworks")
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    
}
