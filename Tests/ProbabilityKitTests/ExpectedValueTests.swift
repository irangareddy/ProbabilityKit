//
//  ExpectedValueTests.swift
//  ProbabilityKit
//
//  Created by Ranga Reddy on 06/10/24.
//

import XCTest
import ProbabilityKit

class ExpectedValueTests: XCTestCase {
    
    func testDiceRoll() {
        let outcomes = [1.0, 2.0, 3.0, 4.0, 5.0, 6.0]
        let probabilities = [1.0/6.0, 1.0/6.0, 1.0/6.0, 1.0/6.0, 1.0/6.0, 1.0/6.0]
        
        let result = expectedValue(outcomes: outcomes, probabilities: probabilities)
        
        XCTAssertEqual(result, 3.5, accuracy: 0.1, "Test Dice Roll")
    }
    
    func testExpectedValueWithInvalidInput() {
            let outcomes: [Double] = []
            let probabilities: [Double] = []
            
            let result = expectedValue(outcomes: outcomes, probabilities: probabilities)
            
            XCTAssertEqual(result, 0.0)
        }
}

