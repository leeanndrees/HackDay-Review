//
//  QuestionBank.swift
//  HackDay-ReviewApp
//
//  Created by DetroitLabs on 9/5/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import Foundation

struct QuestionBank {
    
    func generateQuestionBank() -> [ReviewQuestion] {
        let q1 = ReviewQuestion(question: "What is a variable?", answer: "A box that holds stuff", category: "Week 1")
        let q4 = ReviewQuestion(question: "What does a single equals sign mean in programming?", answer: "It's an assignment operator", category: "Week 1")
        
        let q2 = ReviewQuestion(question: "What is the difference between an array and a dictionary?", answer: "Array is ordered; dictionary is unordered", category: "Week 2")
        let q5 = ReviewQuestion(question: "What is the purpose of a loop in programming?", answer: "Repeat a piece of code until a condition is met", category: "Week 2")
        
        let q3 = ReviewQuestion(question: "What is an optional in Swift programming?", answer: "A 'box' that might or might not have something in it", category: "Week 3")
        let q6 = ReviewQuestion(question: "What happens if you try to force unwrap an optional that doesn't have a value?", answer: "💣💣💥😱😭", category: "Week 3")
        
        var tempQuestions: [ReviewQuestion] = []
        
        tempQuestions.append(q1)
        tempQuestions.append(q2)
        tempQuestions.append(q3)
        tempQuestions.append(q4)
        tempQuestions.append(q5)
        tempQuestions.append(q6)
        
        return tempQuestions
    }
    
}
