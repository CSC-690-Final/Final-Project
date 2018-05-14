//
//  CategoryTableViewController.swift
//  Trivia Game
//
//  Created by Elina Suslova on 4/17/18.
//  Copyright © 2018 Mark Tompong. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        //backgroundImage.image = UIImage(named: "trivia_background.jpg")
        //backgroundImage.contentMode = UIViewContentMode.scaleAspectFill
        //self.view.insertSubview(backgroundImage, at: 0)
        
    }
    var categories: [String] = ["General Knowledge","History","Movies","Literature","Astronomy"]
    var selected: String?
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category = categories[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as! CategoryCell
        cell.textLabel?.text = category
        cell.category = category
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected = categories[indexPath.row]
        performSegue(withIdentifier: "categoryQuestion", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? QuestionViewController {
            destination.category = selected
        }
    }
}



