//
//  GameTests.swift
//  CityQuizTests
//
//  Copyright © 2018 Codurance. All rights reserved.
//

import XCTest
@testable import CityQuiz

class GameTests: XCTestCase {
    var game: Game!

    override func setUp() {
        super.setUp()
        game = Game(cities: ["Lisbon", "Barcelona"], random: RandomGeneratorStub())
    }
    
    override func tearDown() {
        game = nil
        super.tearDown()
    }

    func test_shouldUpdateCurrentCityOnStartNewRound() {
        game.startNewRound()

        XCTAssertEqual(game.city, "Barcelona")
    }

    func test_shouldUpdateScoreBy100() {

        _ = game.updateGame(city: "Barcelona")

        XCTAssertEqual(game.score, 100)
    }

    func test_shouldUpdateAttemptsByOneOnWhenCityIsNotCorrect() {
        XCTAssertEqual(game.attempts, 1)

        _ = game.updateGame(city: "Lisbon")

        XCTAssertEqual(game.attempts, 2)
    }

    func test_shouldResetAttemptsWhenCityIsCorrect() {

        _ = game.updateGame(city: "Lisbon")
        _ = game.updateGame(city: "Barcelona")

        XCTAssertEqual(game.attempts, 0)
    }
}
