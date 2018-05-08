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
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        answerDisplay?.text = "\(answer) \n\nThanks for playing!"
        score?.text = "\(String(currentScore))/10"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
