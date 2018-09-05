//
//  ViewController.swift
//  HackDay-ReviewApp
//
//  Created by DetroitLabs on 9/5/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    var questionsToShow: [ReviewQuestion] = []
    let qb = QuestionBank()

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionsToShow = qb.generateQuestionBank()
        showQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showQuestion() {
        questionLabel.text = questionsToShow[0].question
    }


}

