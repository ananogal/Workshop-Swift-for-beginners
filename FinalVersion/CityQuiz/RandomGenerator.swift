//
//  RandomGenerator.swift
//  CityQuiz
//
//  Copyright © 2018 Codurance. All rights reserved.
//

import Foundation

class RandomGenerator {
    func generate(number: Int) -> Int {
        return Int(arc4random_uniform(UInt32(number)))
    }
}
