//
//  StudentTableViewCell.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import Nuke


class StudentTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var studentImage: UIImageView!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentCity: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpWithData(student: Student) {
        
        let url = URL(string: student.image_url)
        
        Nuke.loadImage(with: url!, into: studentImage)
        
        studentName.text = student.first_name
        studentCity.text = student.city
        
    }
    

}
