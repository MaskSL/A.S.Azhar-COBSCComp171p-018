//
//  HomwWorkViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 6/2/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit

class HomwWorkViewController: UIViewController, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
    var homeworkList = [HomeWorkModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "My Notes"
        
        tableView.dataSource = self
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let savedHomeWorkList = UserDefaults.standard.decode(for: [HomeWorkModel].self, using: String(describing: HomeWorkModel.self))
        
        homeworkList.removeAll()
        
        homeworkList = savedHomeWorkList ?? []
        
        tableView.reloadData()
        
    }
    
    @IBAction func onAddNewTap(_ sender: Any) {
        performSegue(withIdentifier: "showAddNewSegue", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeworkList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! HomeWorkTableViewCell
        
        cell.titleLabel.text = homeworkList[indexPath.row].title
        cell.descLabel.text = homeworkList[indexPath.row].desc
        
        cell.selectionStyle = .none
        
        return cell
    }
    
   
}
