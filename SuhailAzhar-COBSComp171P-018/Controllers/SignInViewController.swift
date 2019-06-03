//
//  SignInViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClick(_ sender: Any) {
        //validations
        if email.text == "" {
            alert(message: "Please enter email")
            return
        }
        
        if password.text == "" {
            alert(message: "Plessre enter password")
            return
        }
        
        if password.text?.count ?? 0 < 6 {
            alert(message: "Password should be atleast 6 characters long")
            return
        }
        
        Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [weak self] user, error in
            guard let strongSelf = self else { return }
            
            if error != nil {
                strongSelf.alert(message: error?.localizedDescription ?? "error")
                return
            }
            
            strongSelf.performSegue(withIdentifier: "toHomeSqgue", sender: nil)
            
        }
        
        
        
        
    }
    
 
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
}
