//
//  SpeedTest.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Quick
import Nimble
@testable import ClassesNenums

class SpeedSpec: QuickSpec {
    override func spec() {
        
        describe("Speed") {
            
            var speed = Speed.fast
            
            describe("isFaster(thanSpeed:") {
                it("Should take in an argument of type Speed and compare the rawValue of self against the rawValue of the argument passed in. If it's greater, it should retursn true.") {
                    
                    var otherSpeed = Speed.slow
                    
                    let result = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result).to(beTrue())
                    
                    // changing otherSpeed to medium
                    otherSpeed = .medium
                    let result2 = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result2).to(beTrue())
                    
                    
                    // changing speed to medium, otherSpeed to fast
                    speed = .medium
                    otherSpeed = .fast
                    let result3 = speed.isFaster(thanSpeed: otherSpeed)
                    expect(result3).to(beFalse())
                }
            }
        }
    }
}
