//
//  Professors.swift
//  NW Scheduler
//
//  Created by Moyer,David C on 4/11/19.
//

import Foundation

class Schedule {
    
    var dayOfWeek:String
    var calendarDay:String
    var days:[Day] = []

    
    init(dayOfWeek:String, calendarDay:String){
        self.dayOfWeek = dayOfWeek
        self.calendarDay = calendarDay
    }
}

class Day {
    
    var course:String
    var time:String
    var location:String
    
    init(course:String, time:String, location:String){
        self.course = course
        self.time = time
        self.location = location
    }
}

class Professor {
    
    var name:String
    var department:String
    var schedules:[Schedule] = []
    
    init(name:String, department:String){
        self.name = name
        self.department = department
    }
    
    func addSchedule(dayOfWeek:String, calendarDay:String){
        
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
