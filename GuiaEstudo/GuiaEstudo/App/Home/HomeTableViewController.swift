//
//  HomeTableViewController.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class HomeTableViewController: UITableViewController, HomeTableViewControllerDelegate {
    
    let homePresenter: HomePresenterDelegate = HomePresenter()
    var subjects: [Subject] = []
    let lbAlert = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorStyle = .none
        
        homePresenter.controller = self
        setupSubjects()
    }
    
    func setupSubjects() {
        homePresenter.createSubjects()
    }
    
    func setupCell(data: [Subject]) {
        subjects = data
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if subjects.count != 0 {
            tableView.backgroundView = nil
        } else {
            lbAlert.text = "OPS!!! Não encontramos dados para exibir"
            lbAlert.textAlignment = .center
            lbAlert.numberOfLines = 0
            tableView.backgroundView = lbAlert
        }
        
        return subjects.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HomeTableViewCell
        let subject = subjects[indexPath.row]
        
        cell.prepare(subject: subject)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let subject = subjects[indexPath.row]
        performSegue(withIdentifier: "subCategorieSegue", sender: subject)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
