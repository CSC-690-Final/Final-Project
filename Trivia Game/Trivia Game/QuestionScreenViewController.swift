//
//  ViewController.swift
//
//
//


import UIKit

class ViewController: UIViewController {
    //-----//
    @IBOutlet weak var questionDisplay: UILabel!
 
    @IBOutlet weak var answerA: UIButton!
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        questionDisplay.text = "Question goes here"
        answerA.setTitle("A", for: .normal)
        
        
        
        
    }
    
    @IBAction func submittedA(_ sender: AnyObject) {
        performSegue(withIdentifier: "answerSubmitted", sender: sender)
        }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
   //self.performSegue(withIdentifier: "answerSubmitted", sender: self)
    
}
    

