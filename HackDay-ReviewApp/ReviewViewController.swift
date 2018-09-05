//
//  ViewController.swift
//  HackDay-ReviewApp
//
//  Created by DetroitLabs on 9/5/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    var questionCollection: [ReviewQuestion] = []
    var questionsToShow: [ReviewQuestion] = []
    let qb = QuestionBank()
    var questionIndex = 0

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionCollection = qb.generateQuestionBank()
        questionsToShow = getQuestionsByCategory(category: CategoryViewController.tappedCategory)
        showQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getQuestionsByCategory(category: String) -> [ReviewQuestion] {
        var questionsInCategory: [ReviewQuestion] = []
        
        for item in questionCollection {
            if item.category == category {
                questionsInCategory.append(item)
            }
        }
        return questionsInCategory
    }
    
    func showQuestion() {
        questionLabel.text = questionsToShow[questionIndex].question
    }
    
    @IBAction func showAnswerButton(_ sender: UIButton) {
        questionLabel.text = questionsToShow[questionIndex].answer
    }
    
    @IBAction func nextQuestionButton(_ sender: Any) {
        if questionIndex < questionsToShow.count - 1 {
            questionIndex += 1
            showQuestion()
        }
        else {
            questionLabel.text = "Out of questions. Choose a new category!"
            
        }
    }
    
    


}

