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
    
    var student: Student? = nil
    @IBOutlet weak var studentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if student != nil {
            
            let url = URL(string: (student?.image_url)!)
            
            Nuke.loadImage(with: url!, into: studentImage)
            
            
        }
        
    }
    

 

}
