//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    
    func addNameToDeliLine(name: String) -> String {
        
        if name == "Meg Ryan" || name == "Billy Crystal" {
            
            deliLine.insert(name, atIndex: 0)
            
            return("Welcome \(name)! You can sit wherever you like.")
            
        } else if deliLine.isEmpty {
            
            deliLine.append(name)
            
            return "Welcome \(name), you're first in line!"
            
        } else {
            
            deliLine.append(name)
            
            return ("Welcome \(name) you're \(deliLine.indexOf(name)!) person in line!")
            
        }
        
    }
    
    func nowServing() -> String {
        
        if deliLine.isEmpty == false {
            
            let name = deliLine.removeAtIndex(0)
            
            return "Now serving \(name)!"
            
            
        } else {
            
            return "There is no one to be served."
            
        }
        
    }
    
    
    
    
    
    func deliLineDescription() -> String {
        
        var description: String = "The line is:"
        
        
        if deliLine.isEmpty {
            
            description = "The line is currently empty."
            
        } else {
            
            for (index, name) in deliLine.enumerate() {
                
                description += ("\(index) \(name)")
            }
            
            
        }
        
        return description
    }
    
}



    
    
    
    
//    
//    func deliLineDescription() -> String {
//        
//        if deliLine.isEmpty {
//            
//            return "The line is currently empty."
//            
//        } else {
//            
//            
//            for (index, name) in deliLine.enumerate() {
//                
//                return ("The line is: \(index) \(name)")
//            }
//        }
//        
//        
//        
//    }
//}
//












