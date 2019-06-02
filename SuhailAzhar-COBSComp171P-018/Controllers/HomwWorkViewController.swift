//
//  HomwWorkViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/2/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit

class HomwWorkViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My Notes"
        
        
        
        
        
    }
    
    @IBAction func onAddNewTap(_ sender: Any) {
        performSegue(withIdentifier: "showAddNewSegue", sender: nil)
    }
    
   
}
