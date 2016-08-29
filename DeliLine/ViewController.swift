//
//  ViewController.swift
//  DeliLine
//
//  Created by James Campagno on 6/21/16.
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
    
}
