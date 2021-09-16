//
//  DescriptionViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit
import AVFoundation

class DescriptionViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet var startButton: UIButton!
    
    //MARK: Properties
    var player: AVAudioPlayer!
    
    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        startButton.layer.cornerRadius = 8
        roundButtons()
    }
    
    //MARK: Actions
    @IBAction func noteButtonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
              sender.alpha = 1.0
        }
    }
    
    //MARK: Private actions
    private func roundButtons() {
        for button in allButtons {
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
        }
    }
    
    private func playSound(soundName: String?) {
        let url = Bundle.main.url(
            forResource: soundName!.replacingOccurrences(of: " ", with: ""),
            withExtension: "wav"
        )
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    //MARK: Navigation
    @IBAction func returnToDescription(_ segue: UIStoryboardSegue) {}
}
