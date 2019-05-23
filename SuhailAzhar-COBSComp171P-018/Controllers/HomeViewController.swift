//
//  HomeViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func studentClick(_ sender: Any) {
        performSegue(withIdentifier: "friendSegue", sender: nil)
    }
    
    @IBAction func homeqorkClick(_ sender: Any) {
        performSegue(withIdentifier: "homeworkSegue", sender: nil)
    }
    
    @IBAction func myProfileClcik(_ sender: Any) {
        performSegue(withIdentifier: "myProfileSegue", sender: nil)
    }
}
