//
//  StudentScheduleTableViewController.swift
//  NW Scheduler
//
//  Created by Tyler Jacobson on 4/29/19.
//

import Foundation
import UIKit

class StudentScheduleTableViewController: UITableViewController {
    
    
    var professor: Professor!
    var chosenDay:DailySchedule!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenDay.courses.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCourseCell", for: indexPath)
        
        let nameLBL = cell.viewWithTag(10) as! UILabel
        let timeLBL = cell.viewWithTag(20) as! UILabel
        let locationLBL = cell.viewWithTag(30) as! UILabel
        // Configure the cell...
        let chosenCourse = chosenDay.courses[indexPath.row]
        nameLBL.text = chosenCourse.courseName
        timeLBL.text = chosenCourse.time
        locationLBL.text = chosenCourse.location
        return cell
}


}
