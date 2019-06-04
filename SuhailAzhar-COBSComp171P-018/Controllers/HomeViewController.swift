//
//  HomeViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var studentsButton: UIButton!
    @IBOutlet weak var homeWorkButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Home"
        
        studentsButton.layer.cornerRadius = 16
        homeWorkButton.layer.cornerRadius = 16
        profileButton.layer.cornerRadius = 16
        
        
    }
    
    //Button click activating segues
    
    @IBAction func studentClick(_ sender: Any) {
        performSegue(withIdentifier: "friendSegue", sender: nil)
    }
    
    @IBAction func homeqorkClick(_ sender: Any) {
        performSegue(withIdentifier: "homeworkSegue", sender: nil)
    }
    
    @IBAction func myProfileClcik(_ sender: Any) {
        performSegue(withIdentifier: "myProfileSegue", sender: nil)
    }
    
    //Logout button click
    @IBAction func logOutClick(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        do {
            //When successful logout
            try firebaseAuth.signOut()
            
            //Navigate t Main storyboard
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            //set viewcontroller to SignInView Controller
            let signInViewVC = storyboard.instantiateViewController(withIdentifier: "signInVC")
            
            navigationController?.pushViewController(signInViewVC, animated: true)
            
        } catch let signOutError as NSError {
            //IF error while signing out
            print ("Error signing out: %@", signOutError)
        }
        
    }
    
    
    
}
