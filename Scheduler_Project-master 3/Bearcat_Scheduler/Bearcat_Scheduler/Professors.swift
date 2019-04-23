//
//  Professors.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import Foundation

class DailySchedule {
    
    var dayOfWeek:String!
    var calendarDay:String!
    var courses:[Course] = []

    init(dayOfWeek:String, calendarDay:String){
        self.dayOfWeek = dayOfWeek
        self.calendarDay = calendarDay
    }
    
    func addCourse(course:Course){
        courses.append(course)
    }
}

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

class Professor {
    
    var name:String
    var department:String
    var schedules:[DailySchedule] = []
    
    init(name:String, department:String){
        self.name = name
        self.department = department
    }
    
   
}

class Professors {
    
    private init() {}
    
    static var shared = Professors()
    
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
