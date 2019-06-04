//
//  StudentDetailViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import Nuke

class StudentDetailViewController: UIViewController {
    
    //Declare Labels
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var fbUrlLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var student: Student? = nil
    @IBOutlet weak var studentImage: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //If student exists then display student details
        if student != nil {
            
            title = student?.first_name
            
            //load student image
            let url = URL(string: (student?.image_url)!)
            Nuke.loadImage(with: url!, into: studentImage)
            
            //set student details
            firstNameLabel.text = student?.first_name
            lastNameLabel.text = student?.last_name
            dobLabel.text = student?.dob
            cityLabel.text = student?.city
            genderLabel.text = student?.gender
            fbUrlLabel.text = student?.fbUrl
            phoneLabel.text = student?.phoneNumber
        }
        
    }
    

 

}
