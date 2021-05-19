//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Prince Carl Velasco on 5/17/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var quiz = [
         Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ].shuffled()
    var numOfQuestion: Int = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        let realAnswer = quiz.filter({ $0.title == getQuestionText() }).first!.correctAnswer
        let userGotCorrect = realAnswer == userAnswer
        
        if userGotCorrect { score += 1 }
        
        return userGotCorrect
    }
    
    func getChoicesText() -> [String] { return quiz[numOfQuestion].answer }
    
    func getQuestionText() -> String { return quiz[numOfQuestion].title }

    func getProgress() -> Float { return Float(numOfQuestion + 1) / Float(quiz.count) }
    
    mutating func nextQuestion() {
        if numOfQuestion + 1 < quiz.count { numOfQuestion += 1 }
        else { numOfQuestion = 0; score = 0 }
    }
    
    mutating func getScore() -> String { return "Score: \(score)" }
}
