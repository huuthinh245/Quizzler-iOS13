//
//  QuestionMutiple.swift
//  Quizzler-iOS13
//
//  Created by thinh on 4/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by thinh on 4/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionMutiple {
    let text: String
    let answer: [String]
    let rightAnswer: String
    init(q: String, a: [String],correctAnswer e: String) {
        self.text = q
        self.answer = a
        self.rightAnswer = e
    }
}
