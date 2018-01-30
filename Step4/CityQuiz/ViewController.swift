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
        print("Hello World")
    }
}

