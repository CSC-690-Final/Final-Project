//
//  GeneralKnowledgeQuestions.swift
//  Trivia Game
//
//  Created by Elina Suslova on 4/29/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//

import Foundation

class GeneralKnowledgeQuestions{
    var list  = [Question]()
    
    init(){
        list.append(Question(questionText: "What year did Albert Einstein die?", choiceA: "1954" , choiceB: "1949", choiceC: "1960", choiceD: "1955", answer: 4))
        list.append(Question(questionText: "Which is the largest planet in the solar system?", choiceA: "Jupiter", choiceB: "Neptune", choiceC: "Earth", choiceD: "Mars", answer: 1))
        list.append(Question(questionText: "What color is Cerulean?", choiceA: "Red", choiceB: "Blue", choiceC: "Yellow", choiceD: "Green", answer: 2))
        list.append(Question(questionText: "How many Presidents have there been in the USA?", choiceA: "36", choiceB: "29", choiceC: "47", choiceD: "45", answer: 4))
        list.append(Question(questionText: "What are a group of Dolphins called?", choiceA: "School", choiceB: "Herd", choiceC: "Pod", choiceD: "Pool", answer: 3))
        list.append(Question(questionText: "Who invented Penicillin?", choiceA: "Alexandra Fleming ", choiceB: "Thomas Edison", choiceC: "Marie Curie", choiceD: "George Orwell", answer: 1))
        list.append(Question(questionText: "What date was President John F Kennedy assassinated?", choiceA: "November 22, 1962", choiceB: "November 22, 1963", choiceC: "October 29, 1964", choiceD: "November 24, 1962", answer: 2))
        list.append(Question(questionText: "How many men have walked on the moon?", choiceA: "10", choiceB: "5", choiceC: "12", choiceD: "9", answer: 3))
        list.append(Question(questionText: "Who has won the most Academy Awards?", choiceA: "James Cameron", choiceB: "Walt Disney", choiceC: "Katherine Hepburn", choiceD: "Steven Spielberg", answer: 2))
        list.append(Question(questionText: "What is the currency of Brazil?", choiceA: "Dollar", choiceB: "The Bhat", choiceC: "Real", choiceD: "Krona", answer: 3))
     }
}
