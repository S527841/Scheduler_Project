//
//  Professors.swift
//  Bearcat_Scheduler
//
//  Created by Moyer,David C on 3/21/19.
//

import Foundation
@objcMembers
class Professor : NSObject {
    
    var name:String?
    var officeNumber:Int
    var classTime:[Events] = []
    override var description: String {
        return "Name: \(name ?? ""), Office: \(officeNumber), ObjectId: \(objectId ?? "N/A")"
    }
    var objectId:String?
    
    static let wrongOffice = -1
    
    init(name:String?, officeNumber:Int?, classTime:[Events]){
        self.name = name
        self.officeNumber = officeNumber ?? Professor.wrongOffice
        self.classTime = classTime
    }
    
    convenience override init(){
        self.init(name:"", officeNumber:Professor.wrongOffice, classTime:[])
    }
    
}
