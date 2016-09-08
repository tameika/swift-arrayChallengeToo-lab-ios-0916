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
    
    
    // 1.
    func addNameToDeliLine(name: String) -> String {
        
        switch name {
        case "Billy Crystal":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Billy! You can sit wherever you like."
        case "Meg Ryan":
            deliLine.insert(name, atIndex: 0)
            return "Welcome Meg! You can sit wherever you like."
        default:
            deliLine.append(name)
        }
        
        switch deliLine.count {
        case 1:
            return "Welcome \(name), you're first in line!"
        default:
            return "Welcome \(name), you're number \(deliLine.count) in line."
        }
        
    }
    
    
    // 2.
    func nowServing() -> String {
        
        switch deliLine.count {
        case 0:
            return "There is no one to be served."
        default:
            let customer = deliLine.removeAtIndex(0)
            return "Now serving \(customer)!"
        }
        
    }
    
    
    // 3.
    func deliLineDescription() -> String {
        
        switch deliLine.count {
        case 0:
            return "The line is currently empty."
        default:
            var result = "The line is:\n"
            for (index, name) in deliLine.enumerate() {
                switch index {
                case deliLine.count - 1:
                    result.appendContentsOf("\(index+1). \(name)")
                default:
                    result.appendContentsOf("\(index+1). \(name)\n")
                }
            }
            return result
        }
    }
    
}

