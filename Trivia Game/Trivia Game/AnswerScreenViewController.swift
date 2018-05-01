//
//  AnswerScreenViewController.swift
//  Trivia Game
//
//  Created by Elina Suslova on 4/17/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//

import UIKit
class answerViewController: UIViewController {
    //-----//
    var answer:String = ""
    
    @IBOutlet weak var answerDisplay: UILabel?
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        answerDisplay?.text = answer
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        performSegue(withIdentifier: "backToQuestion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as! QuestionViewController
        vc.questionNumber += 1
        
    }
    
}

