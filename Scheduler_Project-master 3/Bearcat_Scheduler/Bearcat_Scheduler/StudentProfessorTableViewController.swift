//
//  StudentProfessorTableViewController.swift
//  NW Scheduler
//
//  Created by Tyler Jacobson on 4/29/19.
//

import Foundation

import UIKit

class StudentProfessorTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Professors.shared.numProfessors()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentViewProfessor", for: indexPath)
        cell.textLabel?.text = Professors.shared[indexPath.row].name
        cell.detailTextLabel?.text = "\(Professors.shared[indexPath.row].department)"
        return cell
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Professors.shared.chosenProfessor = Professors.shared[indexPath.row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "daySegue" {
            let daysTVC = segue.destination as! DaysOfWeekTableViewController
            daysTVC.professor = Professors.shared[tableView.indexPathForSelectedRow!.row]
        }
    }
    
    
}
