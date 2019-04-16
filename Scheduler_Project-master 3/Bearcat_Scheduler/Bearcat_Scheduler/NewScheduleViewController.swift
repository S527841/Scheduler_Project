//
//  NewScheduleViewController.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import UIKit

class NewScheduleViewController: UIViewController {
    
    var newSchedule:Professor!
    var newEvent:Schedule!
    
    @IBOutlet weak var dayOfWeek: UITextField!
    @IBOutlet weak var calendarDate: UITextField!
    
    
    @IBOutlet weak var time: UITextField!
    @IBOutlet weak var course: UITextField!
    @IBOutlet weak var location: UITextField!
    
    
    @IBAction func addSchedule(_ sender: Any) {
        if !((dayOfWeek.text?.isEmpty)! && (time.text?.isEmpty)! && (course.text?.isEmpty)! && (location.text?.isEmpty)!) {
        let schedule = Schedule(dayOfWeek: dayOfWeek.text!, calendarDay: calendarDate.text!)
            let event = Day(course: course.text!, time: time.text!, location: location.text!)
            newSchedule.schedules.append(schedule)
            newEvent.days.append(event)
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
