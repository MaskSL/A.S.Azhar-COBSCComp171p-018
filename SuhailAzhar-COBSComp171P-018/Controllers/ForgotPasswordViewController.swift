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
    
    //When change password is clicked
    @IBAction func changePassowrdclICK(_ sender: Any) {
        
        //Update previous password based on the new password textfield
        Auth.auth().currentUser?.updatePassword(to: passwordTP.text ?? "") { (error) in
            
            self.dismiss(animated: true)
            
        }
        
    }
    
    //Go back when back button is clicked.
    @IBAction func backButtonClick(_ sender: Any) {
        
        self.dismiss(animated: true)
        
    }
    
}
