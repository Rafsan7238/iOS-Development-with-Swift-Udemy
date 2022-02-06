//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var scoreView: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let answerMatched = quizBrain.checkAnswer(userAnswer)
        let correctAnswer = quizBrain.getAnswer()
        
        buttonScoreFeedback(answerMatched, correctAnswer, sender)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            self.updateUI()
        }
    }
    
    func buttonScoreFeedback(_ answerMatched: Bool, _ correctAnswer: Int, _ sender: UIButton) {
        
        if answerMatched {
            sender.backgroundColor = UIColor.green
            scoreView.text = "Score: \(quizBrain.getScore())"
        }
        
        else {
            sender.backgroundColor = UIColor.red
            
            if correctAnswer == 0 {
                choice1.backgroundColor = UIColor.blue
            }
            
            else if correctAnswer == 1 {
                choice2.backgroundColor = UIColor.blue
            }
            
            else {
                choice3.backgroundColor = UIColor.blue
            }
        }
        
    }
    
    func updateUI() {
        
        quizBrain.nextQuestion()
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getChoices()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
        progressView.progress = quizBrain.getProgress()
        
        // To return to 0 after quiz ends
        scoreView.text = "Score: \(quizBrain.getScore())"
    }
    
}

