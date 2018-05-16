//
//  LastAnswerScreenViewController.swift
//  Trivia Game
//
//  Created by Mark Tompong on 5/3/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//

import UIKit
class lastAnswerViewController: UIViewController {
    //-----//
    var answer:String = ""
    var currentScore:Int = 0
    
    @IBOutlet weak var answerDisplay: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var scoreDisplay: UILabel!
    @IBOutlet weak var backToMainButton: UIButton!
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        answerDisplay?.text = "\(answer) \n\nThanks for playing!"
        score?.text = "\(String(currentScore))/10"
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "trivia_background.jpg")
        backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        answerDisplay?.clipsToBounds = true
        answerDisplay?.layer.cornerRadius = 20
        score.clipsToBounds = true
        score.layer.cornerRadius = 10
        scoreDisplay.clipsToBounds = true
        scoreDisplay.layer.cornerRadius = 10
        backToMainButton.clipsToBounds = true
        backToMainButton.layer.cornerRadius = 20
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
