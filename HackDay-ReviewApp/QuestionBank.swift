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
        let q1 = ReviewQuestion(question: "Question 1", answer: "Question 1 Answer", category: "Week 1")
        let q2 = ReviewQuestion(question: "Question 2", answer: "Question 2 Answer", category: "Week 2")
        let q3 = ReviewQuestion(question: "Question 3", answer: "Question 3 Answer", category: "Week 3")
        let q4 = ReviewQuestion(question: "Question 4", answer: "Question 4 Answer", category: "Week 1")
        let q5 = ReviewQuestion(question: "Question 5", answer: "Question 5 Answer", category: "Week 2")
        let q6 = ReviewQuestion(question: "Question 6", answer: "Question 6 Answer", category: "Week 3")
        
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
