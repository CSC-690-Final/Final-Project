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
    var category:String = ""
    var questionNumber:Int = 0
    var currentScore:Int = 0
    @IBOutlet weak var answerDisplay: UILabel?
    @IBOutlet weak var score: UILabel?

    
    @IBOutlet weak var mainMenuButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var scoreDisplay: UILabel!
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        answerDisplay?.text = answer
        score?.text = String(currentScore)
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "trivia_background.jpg")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        answerDisplay?.clipsToBounds = true
        answerDisplay?.layer.cornerRadius = 20
        mainMenuButton.clipsToBounds = true
        mainMenuButton.layer.cornerRadius = 20
        nextButton.clipsToBounds = true
        nextButton.layer.cornerRadius = 20
        scoreDisplay.clipsToBounds = true
        scoreDisplay.layer.cornerRadius = 10
        score?.clipsToBounds = true
        score?.layer.cornerRadius = 10
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        performSegue(withIdentifier: "backToQuestion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as? QuestionViewController
        questionNumber += 1
        vc?.questionNumber = self.questionNumber
        vc?.category = self.category
        vc?.currentScore = self.currentScore
    }
    
}

