//
//  ViewController.swift
//  OOPS Demo
//
//  Created by Mindscape on 7/12/16.
//  Copyright © 2016 Webterminal Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //allocating an object
        let byke = Vehicle(numberOfWheel: 2, modelName: "FZ", brandName: "Yamaha", modelYear: 2016, powerSource: "Petrol", color: UIColor.blackColor())
        print("Brand of byke is \(byke.brandName)");
        
        
        let bicycle = Vehicle(numberOfWheel: 2, modelName: "i Series", brandName: "BMW", modelYear: 2012, powerSource: "Man Power", color: UIColor.blackColor())
        print("Bicycle was made in the year of \(bicycle.modelYear)");
        
        
        let car = Vehicle(numberOfWheel: 4, modelName: "i 8", brandName: "BMW", modelYear: 2008, powerSource: "Petrol", color: UIColor.grayColor())
        print("Car model is \(car.modelName)");
        
        
        //calling instance methos
        if car.goBackward() {
            print("Car is going back")
        }
        
        //calling class methos
        if Vehicle.stopMoving() {
            print("Stop the Car")
        }
        
        
        
        
        //Inheritance
        let c = Car(numberOfWheel: 4, modelName: "i 8", brandName: "BMW", modelYear: 2008, powerSource: "Petrol", color: UIColor.grayColor())
        print(c.brandName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
