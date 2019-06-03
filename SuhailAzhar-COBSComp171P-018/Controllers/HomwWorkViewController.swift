//
//  HomwWorkViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/2/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit

class HomwWorkViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My Notes"
        
        /tableView.dataSource = self
        
        
    }
    
    @IBAction func onAddNewTap(_ sender: Any) {
        performSegue(withIdentifier: "showAddNewSegue", sender: nil)
    }
    
  
    
   
}
