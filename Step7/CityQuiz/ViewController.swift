//
//  ViewController.swift
//  CityQuiz
//
//  Created by Ana Nogal on 07/10/2017.
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

    @IBAction func showBarcelona() {
        var message = ""
        if cityLabel.text == "Barcelona" {
            message = "Your are Awesome. I am Barcelona!"
        } else {
            message = "I'm sorry... I'm not \(cityLabel.text!)!"
        }

        let alert = UIAlertController(title: "CityQuiz", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

