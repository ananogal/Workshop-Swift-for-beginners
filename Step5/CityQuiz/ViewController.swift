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
        cityLabel.text = "London"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "My first app", message: "Hello from City1", preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}

