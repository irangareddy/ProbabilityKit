//
//  ExpectedValue.swift
//  ProbabilityKit
//
//  Created by Ranga Reddy on 06/10/24.
//

public func expectedValue(outcomes: [Double], probabilities: [Double]) -> Double {
    guard outcomes.count == probabilities.count else {
        return 0
    }
    
    var expectedValue = 0.0

    for (outcome, probability) in zip(outcomes, probabilities) {
        expectedValue += outcome * probability
    }
    
    return expectedValue
}
