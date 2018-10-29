//
//  File.swift
//  MVVMProject
//
//  Created by Felipe P Braz on 2016-10-18.
//  Copyright © 2016 SBS. All rights reserved.
//

import Foundation

class Dog {
    var name: String
    var birthdate: Date
    var hasPedigree: Bool
    var finalValueBread: String
    var finalValueColor: String
    let fiveYearsAndThreeMonths = 167615983.0
    
    init(name: String, birthdate: Date, hasPedigree: Bool, breed: String, color: String) {
        self.name = name
        self.birthdate = birthdate
        self.hasPedigree = hasPedigree
        self.finalValueBread = breed
        self.finalValueColor = color
    }
    
    init() {
        self.name = "attributedText"
        self.birthdate = Date(timeInterval: -fiveYearsAndThreeMonths, since: Date())
        self.hasPedigree = true
        self.finalValueBread = "Beagle固定值"
        self.finalValueColor = "Tricolor固定值"
    }
}
