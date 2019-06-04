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
    
    @IBAction func addButtonTap(_ sender: Any) {
        
        let homeWork = HomeWorkModel(title: titleTxtField.text ?? "", desc: descTextField.text ?? "")
        
        var savedList = UserDefaults.standard.decode(for: [HomeWorkModel].self, using: String(describing: HomeWorkModel.self))
        
        if (savedList == nil) {
            UserDefaults.standard.encode(for:[homeWork], using: String(describing: HomeWorkModel.self))
        } else {
            savedList?.append(homeWork)
            UserDefaults.standard.encode(for:savedList, using: String(describing: HomeWorkModel.self))
        }
        
        navigationController?.popViewController(animated: true)
    }
    
    
}
