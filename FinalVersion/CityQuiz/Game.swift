//
//  Game.swift
//  CityQuiz
//
//  Copyright © 2018 Codurance. All rights reserved.
//

import Foundation

enum Action {
    case Success
    case Failure
}

struct Game {
    public private(set) var score: Int = 0
    public private(set) var city: String = ""
    public private(set) var attempts: Int = 0
    var round: Int = 0
    let cities: [String]
    let randomGenerator: RandomGenerator
    let attemptsToPoints = [1: 100, 2: 75, 3: 50]

    init(cities: [String], random: RandomGenerator) {
        self.cities = cities
        self.randomGenerator = random
        startNewRound()
    }

    mutating func updateGame(city: String) -> Action {
        if self.city == city {
            updateScore()
            attempts = 0
            return .Success
        } else {
            attempts += 1
            return .Failure
        }
    }

    mutating func startNewRound() {
        let index = randomGenerator.generate(number: cities.count - 1)
        city = cities[index]
        round += 1
        attempts += 1
    }
    
    private mutating func updateScore() {
        if attemptsToPoints.keys.contains(attempts) {
            score += attemptsToPoints[attempts]!
        }
    }

}

