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
    //let category = CategoryViewController()

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionCollection = qb.generateQuestionBank()
        showQuestion()
        questionsToShow = getQuestionsByCategory(category: CategoryViewController.tappedCategory)
        print(questionsToShow)
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
        questionLabel.text = questionCollection[0].question
    }


}

