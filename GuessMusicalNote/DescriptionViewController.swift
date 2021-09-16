//
//  DescriptionViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    
  //MARK: Outlets
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet var startButton: UIButton!
    
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        
        startButton.layer.cornerRadius = 8
        roundButtons()
    }
    
    //MARK: Private actions
    private func roundButtons() {
        for button in allButtons {
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
        }
    }
    
    //MARK: Navigation
    @IBAction func returnToDescription(_ segue: UIStoryboardSegue) {}
}
