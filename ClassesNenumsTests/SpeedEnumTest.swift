//
//  SpeedEnumTest.swift
//  ClassesNenums
//
//  Created by James Campagno on 2/9/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import XCTest
@testable import ClassesNenums


class SpeedEnumTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsFaster() {
        let speed = Speed.fast
        XCTAssertTrue(speed.isFaster(thanSpeed: .slow), ".fast is faster than .slow so it should return true.")
        XCTAssertTrue(speed.isFaster(thanSpeed: .medium), ".fast is faster than .medium so it should return true.")
        XCTAssertFalse(Speed.slow.isFaster(thanSpeed: .fast), ".slow is NOT faster than .fast, this should return false.")
    }
    
}
