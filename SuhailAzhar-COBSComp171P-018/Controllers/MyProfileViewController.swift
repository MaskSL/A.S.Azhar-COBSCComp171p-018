//
//  MyProfileViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import LocalAuthentication

class MyProfileViewController: UIViewController {
    
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My profile"
        
        //Container view default hidden. Can be seen only if the biometrics pass.
        containerView.isHidden  = true
        
        //Call authentication function
        authenticationFingerPrint()
        
    }
    

    //Authentication fingerprint function
    func authenticationFingerPrint(){
        let authContext = LAContext()
        let authReason = "Please use Touch ID to access Your Account"
        var authError : NSError?
        
        
        if authContext.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &authError){
            
            authContext.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: authReason, reply: { (success,error) -> Void in
                
                //If error display message
                if error != nil{
                    DispatchQueue.main.async {
                        self.alert(message: "Authentication Failed")
                        self.navigationController?.popViewController(animated: true)
                    }
                    return
                }
                
                //IF Success then the View can be seen
                if success{
                    //Go to My Account Page
                    DispatchQueue.main.async {
                        UIView.animate(withDuration: 500, animations: {
                            self.containerView.isHidden = false
                        }, completion: nil)
                    }
                }
                
                
            })
            
        }
        else{
            self.alert(message: "Authentication Failed")
            self.navigationController?.popViewController(animated: true)
        }
    }
    

}
