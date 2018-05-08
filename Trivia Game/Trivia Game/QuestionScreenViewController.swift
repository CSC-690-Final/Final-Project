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
    
    var category:String?
    var currentScore:Int = 0
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
        //row is selected based on the id of the question (starting at id [0] representing the first question and the selecedd category)
        let categoryPredicate = NSPredicate(format: "category = %@", category!)
        let questionIDPredicate = NSPredicate(format: "id = %d", questionNumber)
        let searchPredicate = NSCompoundPredicate(andPredicateWithSubpredicates: [categoryPredicate, questionIDPredicate])
        questionFetch.predicate = searchPredicate
        let question = try! managedContext.fetch(questionFetch)
        //current question represents the fecthed values of the current row selected
        let currentQuestion: Questions = question.first as! Questions
        
        categoryDisplay.text = category
        questionDisplay.text = currentQuestion.question
        answerA.setTitle(currentQuestion.a, for: .normal)
        answerB.setTitle(currentQuestion.b, for: .normal)
        answerC.setTitle(currentQuestion.c, for: .normal)
        answerD.setTitle(currentQuestion.d, for: .normal)
        correctAnswer = currentQuestion.correctAnswer!
    }
    

    @IBAction func pressedA(_ sender: Any) {
        
        self.submit = self.answerA.currentTitle!
        
        if questionNumber == 9 {
            performSegue(withIdentifier: "lastAnswer", sender: self)
        }else{
            performSegue(withIdentifier: "submittedAnswer", sender: self)
        }
    }
 
    @IBAction func pressedB(_ sender: Any) {
        
        self.submit = self.answerB.currentTitle!
        
        if questionNumber == 9 {
            performSegue(withIdentifier: "lastAnswer", sender: self)
        }else{
            performSegue(withIdentifier: "submittedAnswer", sender: self)
        }
    }
    
    @IBAction func pressedC(_ sender: Any) {
        
        self.submit = self.answerC.currentTitle!
        
        if questionNumber == 9 {
            performSegue(withIdentifier: "lastAnswer", sender: self)
        }else{
            performSegue(withIdentifier: "submittedAnswer", sender: self)
        }
    }
    
    @IBAction func pressedD(_ sender: Any) {
        
        self.submit = self.answerD.currentTitle!
        
        if questionNumber == 9 {
            performSegue(withIdentifier: "lastAnswer", sender: self)
        }else{
            performSegue(withIdentifier: "submittedAnswer", sender: self)
        }
    }
    
    
    
    //-------------//
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if let vc = segue.destination as? answerViewController {
        
        if self.submit == correctAnswer {
            vc.answer = "Correct! The answer is \(self.submit)"
            currentScore += 1
        }
        else {
            vc.answer = "Sorry! The actual answer is \(self.correctAnswer)"
        }
        vc.currentScore = self.currentScore
        vc.category = self.category!
        vc.questionNumber = self.questionNumber
        }
        
        //---------//
        
        if let vc = segue.destination as? lastAnswerViewController {
            
            if self.submit == correctAnswer {
                vc.answer = "Correct! The answer is \(self.submit)"
                currentScore += 1
            }
            else {
                vc.answer = "Sorry! The actual answer is \(self.correctAnswer)"
            }
            vc.currentScore = self.currentScore
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    

