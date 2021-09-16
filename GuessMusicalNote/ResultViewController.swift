//
//  ResultViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var resultButtons: [UIButton]!
    
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        roundCornersButtons()
    }
    
    //MARK: Actions
    @IBAction func aboutUsButtonPressed() {
        showAlert(title: "Made by Swiftbook 2.22 students:",
                  message: "🦹🏼‍♀️Oksana Kaledina, 🦹🏼Andrey Vanakoff, 🦸🏼‍♂️Niko Tunin")
    }
    
    
   //MARK: Additional actions
    @IBAction func shareButtonPressed() {
        let activityVC = UIActivityViewController(
            activityItems:
                ["My score in Guess Musical Note App is \(scoreLabel.text!)"],
            applicationActivities: nil)
        present(activityVC, animated: true, completion: nil)
    }
    
    //MARK: Private actions
    private func roundCornersButtons() {
        for button in resultButtons {
            button.layer.cornerRadius = 8
        }
    }
    
}

// MARK: Extensions
extension ResultViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
