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
        let q1 = ReviewQuestion(question: "Question 1", answer: "Question 1 Answer")
        let q2 = ReviewQuestion(question: "Question 2", answer: "Question 2 Answer")
        let q3 = ReviewQuestion(question: "Question 3", answer: "Question 3 Answer")
        
        var tempQuestions: [ReviewQuestion] = []
        
        tempQuestions.append(q1)
        tempQuestions.append(q2)
        tempQuestions.append(q3)
        
        return tempQuestions
    }
    
}
