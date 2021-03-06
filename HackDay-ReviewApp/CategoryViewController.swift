//
//  CategoryViewController.swift
//  HackDay-ReviewApp
//
//  Created by DetroitLabs on 9/5/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class CategoryViewController: UITableViewController {
    
    let cb = CategoryBank()
    var index: Int = 0
    static var tappedCategory: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cb.categories.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        
        cell.textLabel?.text = cb.categories[indexPath.row]
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        index = indexPath.row
        
        CategoryViewController.tappedCategory = saveTappedCategory(index: index)
        
        performSegue(withIdentifier: "ReviewQuestions", sender: self)
        
    }
    
    func saveTappedCategory(index: Int) -> String {
        return cb.categories[index]
        
    }
}
