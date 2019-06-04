//
//  Student.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import Foundation

//Student Model

struct Student {
    
    var first_name: String
    var last_name: String
    var city: String
    var image_url: String
    var dob: String
    var fbUrl: String
    var gender: String
    var phoneNumber: String
    
    
    init(first_name: String,
         last_name: String,
         city: String,
         image_url: String,
         dob: String,
         fbUrl: String,
         gender: String,
         phoneNumber: String
        ) {
        self.first_name = first_name
        self.last_name = last_name
        self.city = city
        self.image_url = image_url
        self.dob = dob
        self.fbUrl = fbUrl
        self.gender = gender
        self.phoneNumber = phoneNumber
    }
    
    
    
}
