//
//  Vehicle.swift
//  OOPS Demo
//
//  Created by Mindscape on 7/12/16.
//  Copyright © 2016 Webterminal Inc. All rights reserved.
//

import UIKit


class Vehicle: NSObject {
    var numberOfWheels = 0
    var modelName = "null"
    var brandName = "null"
    var modelYear = 0
    var powerSource = "null"
    var color = UIColor.blackColor()
    
    init(numberOfWheel aWheels:Int, modelName aModelName:String, brandName aBrandName:String, modelYear aModelYear:Int, powerSource aPowerSource:String, color aColor:UIColor) {
        super.init()
        self.numberOfWheels = aWheels
        self.modelName = aModelName
        self.brandName = aBrandName
        self.modelYear = aModelYear
        self.powerSource = aPowerSource
        self.color = aColor
    }
    
    func goForward() -> Bool {
        return true
    }
    
    func goBackward() -> Bool {
        return false
    }
    
    class func stopMoving() -> Bool {
        return false
    }
    
}