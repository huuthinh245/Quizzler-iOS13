//
//  QuizBrains.swift
//  Quizzler-iOS13
//
//  Created by thinh on 4/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by thinh on 4/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrains {
    let quiz = [
        QuestionMutiple(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        QuestionMutiple(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        QuestionMutiple(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        QuestionMutiple(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        QuestionMutiple(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        QuestionMutiple(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        QuestionMutiple(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        QuestionMutiple(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        QuestionMutiple(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        QuestionMutiple(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        
    ]
    var index = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let flag = userAnswer == quiz[index].rightAnswer
        if flag {
            score += 1
        }
        return flag
    }
    
    func getQuestionText() -> String {
        return quiz[index].text
    }
    
    func getAnswer() -> [String] {
        return quiz[index].answer
    }
    
    func getProgress() -> Float {
        return Float(index) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if index < quiz.count - 1 {
            index += 1
        }else {
            index = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
