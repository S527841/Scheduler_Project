//
//  Professors.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import Foundation

class Course {
    
    var courseName:String
    var time:String
    var location:String
    
    init(course:String, time:String, location:String){
        self.courseName = course
        self.time = time
        self.location = location
    }
}


enum DayOfWeek:String {case Monday, Tuesday, Wednesday, Thursday, Friday}

class DailySchedule {
    
    var dayOfWeek:DayOfWeek!
    var courses:[Course] = []

    init(dayOfWeek:DayOfWeek){
        self.dayOfWeek = dayOfWeek
    }
    
    func addCourse(course:Course){
        courses.append(course)
    }
}

class Professor {
    
    var name:String
    var department:String
    var schedules:[DailySchedule] = [DailySchedule(dayOfWeek: .Monday),
    DailySchedule(dayOfWeek: .Tuesday),
    DailySchedule(dayOfWeek: .Wednesday),
    DailySchedule(dayOfWeek: .Thursday),
    DailySchedule(dayOfWeek: .Friday)
    ]
    
    init(name:String, department:String){
        self.name = name
        self.department = department
    }
    
   
}

class Professors {
    
    private init() {}
    
    static var shared = Professors()
    
    var chosenProfessor:Professor!
    var chosenDailySchedule:DailySchedule!
    
    private var professors:[Professor] = []
    
    func numProfessors() -> Int {
        return professors.count
    }
    
    subscript(index:Int) -> Professor {
        return professors[index]
    }
    
    func add(professor:Professor){
        professors.append(professor)
    }
    
    func delete(shared:Professor){
        for i in 0 ..< professors.count {
            if professors[i].name == shared.name {
                professors.remove(at: i)
                break
            }
        }
    }
}
