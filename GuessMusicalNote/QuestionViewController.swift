//
//  QuestionViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit

class QuestionViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var answerButtons: [UIButton]!
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
 
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        roundAnswerButtons()
    }
    
   //MARK: Private actions
    private func roundAnswerButtons() {
        for button in answerButtons {
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
        }
    }


}
