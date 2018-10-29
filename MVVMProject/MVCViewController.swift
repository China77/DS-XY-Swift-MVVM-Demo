//
//  MVCViewController.swift
//  MVVMProject
//
//  Created by Felipe P Braz on 2016-10-18.
//  Copyright © 2016 iOSQuickstart. All rights reserved.
//

import UIKit

class MVCViewController: UIViewController {
    
    private var dog = Dog()

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var breed: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var age: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateScreen()
    }
    
    func updateScreen() {
        name.attributedText = getNameAttributedString()
        breed.text = dog.finalValueBread
        color.text = dog.finalValueColor
        age.text = getAgeString()
    }
    
    func getNameAttributedString() -> NSAttributedString {
        
        let tempRandom:Int = Int(arc4random()%100)+1 // 1-100
        let color = tempRandom > 50 ? UIColor.blue : UIColor.red
        dog.name = dog.name + " \(tempRandom)";
        let name = tempRandom > 50 ? dog.name + " > 50" : dog.name + " <= 50"
        
        return NSAttributedString(string: name, attributes: [NSForegroundColorAttributeName: color])
    }
    
    func getAgeString() -> String {
        
        //let ageComponents = Calendar.current.dateComponents([.year, .month], from: dog.birthdate, to: Date())
        
        var result = "业务逻辑 算法"
        result = result + " method logic"
        return "\(result) :)"
    }
}

