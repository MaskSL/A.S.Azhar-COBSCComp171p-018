//
//  ForgotPasswordViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/4/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import Firebase

class ForgotPasswordViewController: UIViewController {
    
    
    @IBOutlet weak var passwordTP: UITextField!
    @IBOutlet weak var confirmPasswordTP: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changePassowrdclICK(_ sender: Any) {
        
        Auth.auth().currentUser?.updatePassword(to: passwordTP.text ?? "") { (error) in
            
            self.dismiss(animated: true)
            
        }
        
    }
    
 
    @IBAction func backButtonClick(_ sender: Any) {
        
        self.dismiss(animated: true)
        
    }
    
}
