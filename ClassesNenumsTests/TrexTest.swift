//
//  TrexTest.swift
//  ClassesNenums
//
//  Created by James Campagno on 2/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import XCTest
@testable import ClassesNenums

class TrexTest: XCTestCase {
    
    let fred = Trex(name: "Fred", sex: .male)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testInit() {
        XCTAssertEqual(fred.speed, .fast, "The speed of fred should be fast at initialization.")
        XCTAssertEqual(fred.diet, .meatEater, "Fred should be a meatEater by default after init.")
        XCTAssertEqual(fred.name, "Fred", "The name of fred should be Fred because of Fred being passed into our init function.")
        XCTAssertEqual(fred.sex, .male, "The sex of fred should be .male as that is what was passed into the init function.")
        XCTAssertEqual(fred.isAlive, true, "The default value of isAlive should be set to true after init.")
    }
    
    func testIsAliveProperty() {
        fred.isAlive = false
        XCTAssertFalse(fred.isAlive, "We have just changed the isAlive property to false. It should be false.")
    }
    
    func testSpeedProperty() {
        fred.speed = .slow
        XCTAssertEqual(fred.speed, .slow, "Fred should be able to update his speed stored property to .speed")
    }
    
    func testSpeak() {
        XCTAssertEqual(fred.speak(), "ROAAAWWWWRRRRR!!!!!!")
    }
    
    func testIsFaster() {
        let slowBetty = Trex(name: "Betty", sex: .female)
        slowBetty.speed = .slow
        XCTAssertTrue(fred.isFaster(thanTrex: slowBetty), "Fred is faster than Betty when her speed is .slow so this should return true.")
        
        slowBetty.speed = .medium
        XCTAssertTrue(fred.isFaster(thanTrex: slowBetty), "Fred is faster than Betty when her speed is .medium so this should return true.")
    }
    
    func testEat() {
        let brian = Trex(name: "Brian", sex: .male)
        brian.speed = .slow
        fred.eat(otherTrex: brian)
        XCTAssertFalse(brian.isAlive, "Brians isAlive should be false after he's been eaten by Fred when Brians speed is .slow.")
        
        // Revive Brian, only to be eaten again.
        brian.isAlive = true
        brian.speed = .medium
        fred.eat(otherTrex: brian)
        XCTAssertFalse(brian.isAlive, "Brians isalive should be false after he's been eaten by Fred when Brians speed is .medium.")
    }
    
}
