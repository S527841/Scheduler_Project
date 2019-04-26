//
//  ScheduleTableViewController.swift
//  NW Scheduler
//
//  Created by Michael Rogers on 4/26/19.
//

import UIKit

class ScheduleTableViewController: UITableViewController {
    
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell", for: indexPath)
        
        let nameLBL = cell.viewWithTag(100) as! UILabel
        let timeLBL = cell.viewWithTag(200) as! UILabel
        // Configure the cell...
        let chosenCourse = chosenDay.courses[indexPath.row]
        nameLBL.text = chosenCourse.courseName
        timeLBL.text = chosenCourse.time
        return cell
    }
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let newEventVC = segue.destination as! NewDailyScheduleViewController
        newEventVC.professor = professor
        newEventVC.chosenDay = chosenDay
        
    }
    
    
    
    
    
}
