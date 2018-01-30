//
//  AboutViewController.swift
//  CityQuiz
//
//  Copyright © 2018 Ana Nogal. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadHtmlFile()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func loadHtmlFile() {
        if let url = Bundle.main.url(forResource: "CityQuiz", withExtension: "html") {
            if let htmlData = try?Data(contentsOf: url) {
                let baseUrl = URL(fileURLWithPath: Bundle.main.bundlePath)
                webView.load(htmlData, mimeType: "text/html", textEncodingName: "UTF-8", baseURL: baseUrl)
            }
        }
    }

    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}
