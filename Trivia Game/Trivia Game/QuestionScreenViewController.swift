//
//  ViewController.swift
//
//
//


import UIKit

class ViewController: UIViewController {
    //-------------//
    @IBOutlet weak var questionDisplay: UILabel!
 
    @IBOutlet weak var categoryDisplay: UILabel!
    
    @IBOutlet weak var answerA: UIButton!
    
    @IBOutlet weak var answerB: UIButton!
    
    @IBOutlet weak var answerC: UIButton!
    
    @IBOutlet weak var answerD: UIButton!
    
    var submit = ""
    var category: String?
   
    //-------------//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryDisplay.text = category
        questionDisplay.text = "Question goes here"
        answerA.setTitle("A", for: .normal)
        answerB.setTitle("B", for: .normal)
        answerC.setTitle("C", for: .normal)
        answerD.setTitle("D", for: .normal)
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
        let vc = segue.destination as! answerViewController
        vc.answer = self.submit
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
    

