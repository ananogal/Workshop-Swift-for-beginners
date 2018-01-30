//
//  CityQuizTests.swift
//  CityQuizTests
//
//  Copyright © 2018 Codurance. All rights reserved.
//

import XCTest
@testable import CityQuiz

class ViewControllerTests: XCTestCase {

    var controller: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        controller = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        controller.cities = ["Lisbon", "Barcelona"]
        controller.randomGenerator = RandomGeneratorStub()
        controller.game = Game(cities: controller.cities, random: controller.randomGenerator)
        controller.loadViewIfNeeded()
    }
    
    override func tearDown() {
        controller = nil
        super.tearDown()
    }

    func test_shouldInitializeLabelsWithDefaultValues() {

        XCTAssertEqual(controller.scoreLabel.text, "0")
        XCTAssertEqual(controller.roundLabel.text, "1")
    }

    func test_shouldUpdateScoreBy100WhenSelectedCityIsCorrect() {

        controller.showBarcelona()

        XCTAssertEqual(controller.scoreLabel.text, "100")
    }

    func test_shouldUpdateScoreBy75WhenSelectedCityCorrectOnSecondAttempt() {

        controller.showLisbon()
        controller.showBarcelona()

        XCTAssertEqual(controller.scoreLabel.text, "75")
    }

    func test_shouldUpdateScoreBy50WhenSelectedCityCorrectOnThirdAttempt() {

        controller.showLisbon()
        controller.showLisbon()
        controller.showBarcelona()

        XCTAssertEqual(controller.scoreLabel.text, "50")
    }

    func test_shouldResetGame() {

        controller.showBarcelona()
        controller.resetGame()

        XCTAssertEqual(controller.scoreLabel.text, "0")
        XCTAssertEqual(controller.roundLabel.text, "1")
    }
}
