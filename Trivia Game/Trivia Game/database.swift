//
//  database.swift
//  Trivia Game
//
//  Created by Mark Tompong on 4/26/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//


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
        
        newQuestion.setValue("test", forKeyPath: "question")
        newQuestion.setValue("test", forKeyPath: "a")
        newQuestion.setValue("test", forKeyPath: "b")
        newQuestion.setValue("test", forKeyPath: "c")
        newQuestion.setValue("test", forKeyPath: "d")
        newQuestion.setValue("test", forKeyPath: "correctAnswer")
        newQuestion.setValue("Astronomy", forKeyPath: "category")
        newQuestion.setValue( 0, forKeyPath: "id")
 
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
 
        //--//
        let questionFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Questions")
        questionFetch.fetchLimit = 1                  //"question = %@"
        questionFetch.predicate = NSPredicate(format: "id = %d", 0)
        let question = try! managedContext.fetch(questionFetch)
        
        let question1: Questions = question.first as! Questions
        print("question: \(String(describing: question1.question)))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

