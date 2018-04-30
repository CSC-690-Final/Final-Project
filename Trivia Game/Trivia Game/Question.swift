//
//  Question.swift
//  Trivia Game
//
//  Created by Elina Suslova on 4/29/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//

import Foundation

class Question{
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    
    init(questionText: String,choiceA: String, choiceB: String, choiceC: String,choiceD: String, answer: Int){
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = choiceD
        correctAnswer = answer
    }
}
