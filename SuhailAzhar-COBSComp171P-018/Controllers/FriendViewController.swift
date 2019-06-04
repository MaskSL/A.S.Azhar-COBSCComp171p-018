//
//  FriendViewController.swift
//  SuhailAzhar-COBSComp171P-018
//
//  Created by Suhail on 5/23/19.
//  Copyright © 2019 Digital-07. All rights reserved.
//

import UIKit
import Firebase

class FriendViewController: UIViewController {
    
    //Declare student array
    var studentsList : [Student] = []
    var ref: DatabaseReference!
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Students"

        ref = Database.database().reference()
        
        tableview.dataSource = self
        tableview.delegate = self
        
        //Call function
        getStudentData()
    }
    
    //Function to get Student Data
    func getStudentData() {
        
        let friendsRef = ref.child("students");
        
        //Firebase code, get student data
        friendsRef.observe(.value) { snapshot in
            self.activityIndicator.stopAnimating()
            for child in snapshot.children.allObjects as! [DataSnapshot] {
                
                let studentDic = child.value as! NSDictionary
                
                //Assign values
                let first_name = studentDic["first_name"] as! String
                let last_name = studentDic["last_name"] as! String
                let city = studentDic["city"] as? String
                let birthday = studentDic["birthday"] as? String
                let imageUrl = studentDic["imageUrl"] as? String
                let fb_profile_url = studentDic["facebookUrl"] as? String
                let gender = studentDic["gender"] as? String
                let phoneNo = studentDic["phoneNumber"] as? String
                
                //Set default values if no values retrieved
                let student = Student(
                    first_name: first_name,
                    last_name: last_name,
                    city: city ?? "",
                    image_url: imageUrl ?? "",
                    dob: birthday ?? "",
                    fbUrl: fb_profile_url ?? "",
                    gender: gender ?? "",
                    phoneNumber: phoneNo ?? ""
                )
                
                self.studentsList.append(student)
                
                
                print(child)
                
                
                
            }
            //Load data into table view
            self.tableview.reloadData()
        }
        
    }

}

extension FriendViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentsList.count
    }
    //Get data based on student cell selected
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath) as! StudentTableViewCell
        
        
        cell.selectionStyle = .none
        
        cell.setUpWithData(student: studentsList[indexPath.row])
        
        //Return values
        return cell
    }
    //Navigates to student details page when  cell is clicked
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "studentDetailSegue", sender: studentsList[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "studentDetailSegue" {
            if let viewController = segue.destination as? StudentDetailViewController {
               
                    viewController.student = sender as? Student
                
            }
        }
    }
    
    
    
}
