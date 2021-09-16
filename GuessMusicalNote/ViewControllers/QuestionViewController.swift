//
//  QuestionViewController.swift
//  GuessMusicalNote
//
//  Created by Andrey Vanakoff on 15/09/2021.
//

import UIKit
import AVFoundation

class QuestionViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var answerButtons: [UIButton]!
    @IBOutlet weak var progressView: UIProgressView!
    
    //MARK: Properties
    var player: AVAudioPlayer!
    
    //MARK: Private Properties
    private let questions = MusicQuestion.getQuestions()
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    private var questionIndex = 0
    private var score = 0

    //MARK: Settings
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "Argon")!)
        roundAnswerButtons()
        navigationItem.hidesBackButton = true
        updateUI()
    }
    
    //MARK: Actions
    @IBAction func answerPressed(_ sender: Any) {
        guard let buttonIndex = answerButtons.firstIndex(of: sender as! UIButton) else { return }
        let currentAnswer = currentAnswers[buttonIndex]
        if currentAnswer.answer {
            score += 1
        }
        nextQuestion()
    }
    
    @IBAction func noteButtonPressed() {
        playSound(soundName: questions[questionIndex].title.rawValue)
    }

    //MARK: Private actions
    private func roundAnswerButtons() {
        for button in answerButtons {
            button.layer.cornerRadius = 0.5 * button.bounds.size.width
        }
    }
    
    private func playSound(soundName: String?) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    private func nextQuestion() {
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
            return
        }
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    private func updateUI() {
        let totalProgress = Float(questionIndex) / Float(questions.count)
        for (button, answer) in zip(answerButtons, questions[questionIndex].answers) {
            button.setTitle(answer.musicNote.rawValue, for: .normal)
        }
        progressView.setProgress(totalProgress, animated: true)
        title = "Question № \(questionIndex + 1) / \(questions.count)"
    }

    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else {return}
        resultVC.scoreText = "\(score) / \(questions.count)"
    }
}
