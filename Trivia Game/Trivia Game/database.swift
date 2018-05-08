//
//  database.swift
//  Trivia Game
//
//  Created by Mark Tompong on 4/26/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//


import UIKit
import CoreData

class dbViewController: UIViewController {
    //-----//
   
    
    //-----//
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
        let managedContext = appDelegate.persistentContainer.viewContext
        let questionEntity = NSEntityDescription.entity(forEntityName: "Questions", in: managedContext)!
      
        let newQuestion = NSManagedObject(entity: questionEntity, insertInto: managedContext)
        
        newQuestion.setValue("what color is the sun?", forKeyPath: "question")
        newQuestion.setValue("red", forKeyPath: "a")
        newQuestion.setValue("green", forKeyPath: "b")
        newQuestion.setValue("blue", forKeyPath: "c")
        newQuestion.setValue("yellow", forKeyPath: "d")
        newQuestion.setValue("yellow", forKeyPath: "correctAnswer")
        newQuestion.setValue( 1, forKeyPath: "id")
 
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
 
        //--//
        let questionFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Questions")
        questionFetch.fetchLimit = 1                  //"question = %@"
        questionFetch.predicate = NSPredicate(format: "id = %d", 1)
        let question = try! managedContext.fetch(questionFetch)
        
        let question1: Questions = question.first as! Questions
        print("question: \(String(describing: question1.question)))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

