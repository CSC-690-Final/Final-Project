//
//  ViewController.swift
//
//
//


import UIKit
import CoreData

class QuestionViewController: UIViewController {
    //-------------//
    @IBOutlet weak var questionDisplay: UILabel!
 
    @IBOutlet weak var categoryDisplay: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    
    @IBOutlet weak var answerB: UIButton!
    
    @IBOutlet weak var answerC: UIButton!
    
    @IBOutlet weak var answerD: UIButton!
    
  
    var submit = ""
    var questionNumber = 0
    var correctAnswer = ""
    //-------------//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fetches the row from the Questions data model
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let questionFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Questions")
        questionFetch.fetchLimit = 1
        //row is selected based on the id of the question (starting at id [0] represnting the first question)
        questionFetch.predicate = NSPredicate(format: "id = %d", questionNumber)
        let question = try! managedContext.fetch(questionFetch)
        //current question represents the fecthed values of the current row slected
        let currentQuestion: Questions = question.first as! Questions
        
        categoryDisplay.text = "Current Category"
        questionDisplay.text = currentQuestion.question
        answerA.setTitle(currentQuestion.a, for: .normal)
        answerB.setTitle(currentQuestion.b, for: .normal)
        answerC.setTitle(currentQuestion.c, for: .normal)
        answerD.setTitle(currentQuestion.d, for: .normal)
        correctAnswer = currentQuestion.correctAnswer!
    }
    

    @IBAction func pressedA(_ sender: Any) {
        self.submit = self.answerA.currentTitle!
        performSegue(withIdentifier: "submittedAnswer", sender: self)
    }
 
    @IBAction func pressedB(_ sender: Any) {
        self.submit = self.answerB.currentTitle!
        performSegue(withIdentifier: "submittedAnswer", sender: self)
    }
    
    @IBAction func pressedC(_ sender: Any) {
        self.submit = self.answerC.currentTitle!
        performSegue(withIdentifier: "submittedAnswer", sender: self)
    }
    
    @IBAction func pressedD(_ sender: Any) {
        self.submit = self.answerD.currentTitle!
        performSegue(withIdentifier: "submittedAnswer", sender: self)
    }
    
    
    
    //-------------//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let vc = segue.destination as? answerViewController
        
        if self.submit == correctAnswer {
            vc?.answer = "Correct! The answer was \(self.submit)"
        }
        else {
            vc?.answer = "Sorry! The actual answer was \(correctAnswer)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    

