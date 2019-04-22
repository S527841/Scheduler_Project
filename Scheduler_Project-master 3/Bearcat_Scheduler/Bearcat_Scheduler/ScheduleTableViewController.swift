//
//  ScheduleTableViewController.swift
//  Bearcat_Scheduler
//
//  Created by Hoskins,Andrew J on 3/19/19.
//

import UIKit

class ScheduleTableViewController: UITableViewController {

    
    var professor: Professor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "event", for: indexPath)
        cell.textLabel?.text = professor.schedules[indexPath.row].dayOfWeek
        cell.detailTextLabel?.text = String(professor.schedules[indexPath.row].calendarDay)

        return cell
    }
    

   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "newEventSegue" {
            let newEventVC = segue.destination as! NewDailyScheduleViewController
            newEventVC.professor = professor } else if segue.identifier == "eventDetails" {
            let scheduleVC = segue.destination as! ScheduleViewController
            scheduleVC.chosenEvent = professor.schedules [(tableView.indexPathForSelectedRow?.row)!]
        
        }
    }
    

}
