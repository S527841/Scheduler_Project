//
//  Professors.swift
//  Bearcat_Scheduler
//
//  Created by Smith,Logan W on 4/4/19.
//

import Foundation

class Professor {
    var name:String
    
    init(name:String){
        self.name = name
    }
    
class Major {
    var name:String
    var professors:[Professor] = []
    
    init(name:String){
        self.name = name
    }
    
class Majors {
    private init() {}
    
    static var shared = Majors()
    
    private var majors:[Majors] = []
    
    func numMajors() -> Int {
        return majors.count
    }
    }
}
}
