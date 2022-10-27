//
//  ViewController.swift
//  Hello World
//
//  Created by Azamat Tkhakakhov on 26.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    @IBOutlet var greetingButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
        greetingButton.configuration = setupButton(with: "Show Greeting")
    }

    @IBAction func greetingButtonDidTapped() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

