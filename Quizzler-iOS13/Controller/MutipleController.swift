//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class MutipleController: UIViewController {
    
    @IBOutlet weak var lblQuestion: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var lblScore: UILabel!
    var timer: Timer!
    var quizBrain = QuizBrains()
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func handlePress(sender: UIButton) {
        timer?.invalidate()
        let title = sender.currentTitle!
        let checkBool =   quizBrain.checkAnswer(title)
        if checkBool {
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        lblQuestion.text = quizBrain.getQuestionText()
        choice1.setTitle(quizBrain.getAnswer()[0], for: .normal)
        choice2.setTitle(quizBrain.getAnswer()[1], for: .normal)
        choice3.setTitle(quizBrain.getAnswer()[2], for: .normal)
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
        lblScore.text = "Score: \(quizBrain.getScore())"
    }
    
}

