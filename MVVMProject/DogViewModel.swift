//
//  DogViewModel.swift
//  MVVMProject
//
//  Created by Felipe P Braz on 2016-10-18.
//  Copyright © 2016 iOSQuickstart. All rights reserved.
//

import UIKit

class DogViewModel {
    let name: NSAttributedString
    let breed: String
    let color: String
    let age: String
    
    private var dog: Dog
    
    init(dog: Dog) {
        self.dog = dog
        self.name = DogViewModel.getNameAttributedString(with: dog)
        self.age = DogViewModel.getAgeString(with: dog)
        self.breed = dog.finalValueBread
        self.color = dog.finalValueColor
    }
    
    private static func getNameAttributedString(with dog: Dog) -> NSAttributedString {

        let tempRandom:Int = Int(arc4random()%100)+1 // 1-100
        let color = tempRandom > 50 ? UIColor.blue : UIColor.red
        dog.name = dog.name + " \(tempRandom)";
        let name = tempRandom > 50 ? dog.name + " > 50" : dog.name + " <= 50"
        
        return NSAttributedString(string: name, attributes: [NSForegroundColorAttributeName: color])
    }
    
    private static func getAgeString(with dog: Dog) -> String {
        //let ageComponents = Calendar.current.dateComponents([.year, .month], from: dog.birthdate, to: Date())
        
        var result = "业务逻辑 算法"
        result = result + " method logic"
        return "\(result) :)"
    }
    
}
