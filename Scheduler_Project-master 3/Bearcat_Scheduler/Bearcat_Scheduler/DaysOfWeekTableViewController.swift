//
//  ScheduleTableViewController.swift
//  Bearcat_Scheduler
//
//  Created by Hoskins,Andrew J on 3/19/19.
//

import UIKit

class DaysOfWeekTableViewController: UITableViewController {

    
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
        return professor.schedules.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "event", for: indexPath)
        cell.textLabel?.text = "\(professor.schedules[indexPath.row].dayOfWeek!)"

        return cell
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
   
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == UITableViewCell.EditingStyle.delete) {
            professor.schedules.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Professors.shared.chosenDailySchedule = Professors.shared.chosenProfessor.schedules[indexPath.row]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let scheduleTVC = segue.destination as! ScheduleTableViewController
            scheduleTVC.professor = professor
            scheduleTVC.chosenDay = professor.schedules [(tableView.indexPathForSelectedRow?.row)!]
        }

}
