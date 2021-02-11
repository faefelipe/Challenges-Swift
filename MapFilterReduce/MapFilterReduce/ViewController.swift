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
        principal()
    }
    
    let myImacPro = Device(type: "Imac Pro", price: 4999.00, color: "Space grey")
    let myIphone6Plus = Device(type: "iPhone", price: 799.00, color: "white")
    let myIphone7 = Device(type: "iPhone", price: 699.00, color: "Black")
    let myIpad = Device(type: "Ipad", price: 599.00, color: "Space grey")
    let myAppleWatch = Device(type: "Apple Watch", price: 349.00, color: "Space grey")
    let myAppleTv = Device(type: "Apple TV", price: 199.00, color: "Black")
    
    func principal() {
        let myDevices = [myImacPro, myIphone6Plus, myIphone7, myIpad, myAppleWatch, myAppleTv]
        // Filter
        let iPhones = myDevices.filter({ return $0.type == "iPhone"})
        print(iPhones)
        // Map
        
        let brazilPrices: [Float] = myDevices.map({ return $0.price * 6})
        print("Prices: \(brazilPrices)")
        // Reduce
    }
}

