//
//  QuestionDataProperties.swift
//  Trivia Game
//
//  Created by Mark Tompong on 5/1/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//


import Foundation
import CoreData


extension Question {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Question> {
        return NSFetchRequest<Question>(entityName: "Questions")
    }
    
    
    @NSManaged public var a: String?
    @NSManaged public var b: String?
    @NSManaged public var c: String?
    @NSManaged public var d: String?
    @NSManaged public var correctAnswer: String?
    @NSManaged public var id: Int16
    
    
}

