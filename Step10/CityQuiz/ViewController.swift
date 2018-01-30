//
//  ViewController.swift
//  CityQuiz
//
//  Copyright © 2017 Codurance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        cityLabel.text = "Barcelona"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    private func messageForCity(_ city: String) -> String {
        return isSelectedCity(city) ? "Your are Awesome. I am \(city)!" : "I'm sorry... I'm not \(cityLabel.text!)!"
    }

    private func buttonTitleForCity(_ city: String) -> String {
        return isSelectedCity(city) ? "Awesome" : "Try again"
    }

    func showAlert(_ city: String) {
        let message = messageForCity(city)
        let buttonTitle = buttonTitleForCity(city)
        let alert = UIAlertController(title: "CityQuiz", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: buttonTitle, style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    @IBAction func showBarcelona() {
        showAlert("Barcelona")
    }

    @IBAction func showLisbon() {
        showAlert("Lisbon")
    }

    @IBAction func showLondon() {
        showAlert("London")
    }

    @IBAction func showParis() {
        showAlert("Paris")
    }

    private func isSelectedCity(_ city: String) -> Bool {
        return cityLabel.text == city
    }
}

