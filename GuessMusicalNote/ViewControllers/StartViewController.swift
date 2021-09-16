//
//  ViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit

class StartViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var startTestButton: UIButton!
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        startTestButton.layer.cornerRadius = 8
    }

    //MARK: Navigation
    @IBAction func unwind(_ segue: UIStoryboardSegue) {}
}

