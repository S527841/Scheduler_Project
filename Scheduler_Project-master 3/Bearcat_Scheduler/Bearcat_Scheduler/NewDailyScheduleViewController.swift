//
//  NewScheduleViewController.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import UIKit

class NewDailyScheduleViewController: UIViewController {
    
    var professor:Professor!
    var chosenDay:DailySchedule!

    var dayOfWeek:DayOfWeek!
    
    @IBOutlet weak var timeTF: UITextField!
    @IBOutlet weak var courseTF: UITextField!
    @IBOutlet weak var locationTF: UITextField!
    
    
    @IBAction func addSchedule(_ sender: Any) {
        
        if timeTF.text!.isEmpty || courseTF.text!.isEmpty || locationTF.text!.isEmpty {
            print("Bail!")
        } else {
            
            let course = Course(course: courseTF.text!, time: timeTF.text!, location: locationTF.text!)
            chosenDay.addCourse(course: course)
            
            let alert = UIAlertController(title: "Success", message: "Event has been added successfully! Want to add another Event? Fill in the information and press add again!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
            
            self.present(alert, animated: true)
            
            timeTF!.text = nil
            courseTF!.text = nil
            locationTF!.text = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func done(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
