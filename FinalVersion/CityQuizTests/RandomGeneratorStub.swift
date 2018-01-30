//
//  RandomGeneratorStub.swift
//  CityQuizTests
//
//  Copyright © 2018 Codurance. All rights reserved.
//

import Foundation
@testable import CityQuiz

class RandomGeneratorStub: RandomGenerator {
    override func generate(number: Int) -> Int {
        return 1
    }
}
