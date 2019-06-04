//
//  HomeWorkModel.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/4/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import Foundation

struct HomeWorkModel: Codable {
    
    var title: String
    var desc: String
    
    init(title: String, desc: String) {
        self.title = title
        self.desc = desc
    }
    
}
