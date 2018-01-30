//
//  ViewController.swift
//  CityQuiz
//
//  Copyright © 2017 Codurance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!


    var cities = ["Barcelona", "Lisbon", "London", "Paris"]
    var randomGenerator = RandomGenerator()
    var game: Game!

    var currentCity: String {
        get {
            return game.city
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showBarcelona() {
        guessedCity("Barcelona")
    }

    @IBAction func showLisbon() {
        guessedCity("Lisbon")
    }

    @IBAction func showLondon() {
        guessedCity("London")
    }

    @IBAction func showParis() {
        guessedCity("Paris")
    }

    
    @IBAction func resetGame() {
        startNewGame()
    }

    @IBAction func pressedInfoButton() {
        performSegue(withIdentifier: "showAbout", sender: nil)
    }
    
    func showAlert(_ action: Action) {
        let buttonTitle = action == .Success ? "Awesome" : "Try again"
        let message = action == .Success ? "Your are Awesome. I am \(game.city)!" : "I'm sorry... I'm not \(game.city)!"
        let alert = UIAlertController(title: "CityQuiz", message: message, preferredStyle: .alert)
        let buttonAction = UIAlertAction(title: buttonTitle, style: .default, handler: nil)
        alert.addAction(buttonAction)
        present(alert, animated: true, completion: {
            if action == .Success {
                self.game.startNewRound()
                self.updateUI()
            }
        })
    }

    private func startNewGame() {
        game = Game(cities: cities, random: randomGenerator)
        updateUI()
    }

    private func guessedCity(_ city: String) {
        let action = game.updateGame(city: city)
        updateUI()
        showAlert(action)
    }

    private func updateUI() {
        cityLabel.text = "\(game.city)?"
        scoreLabel.text = String(game.score)
        roundLabel.text = String(game.round)
    }
}

