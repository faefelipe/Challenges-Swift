//
//  ViewController.swift
//  MapFilterReduce
//
//  Created by Paco on 11/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myDevices = [myImacPro, myIphone6Plus, myIphone7, myIpad, myAppleWatch, myAppleTv]
        
        print(principal())
    }

    
    var myImacPro = Device(type: "Imac Pro", price: 4999.00, color: "Space grey")
    var myIphone6Plus = Device(type: "Iphone", price: 799.00, color: "white")
    var myIphone7 = Device(type: "Iphone", price: 699.00, color: "Black")
    var myIpad = Device(type: "Ipad", price: 599.00, color: "Space grey")
    var myAppleWatch = Device(type: "Apple Watch", price: 349.00, color: "Space grey")
    var myAppleTv = Device(type: "Apple TV", price: 199.00, color: "Black")
    
    
    func principal() {
        
    }
}

