//
//  HomePresenter.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

class HomePresenter: HomePresenterDelegate {
    
    weak var controller: HomeTableViewControllerDelegate?
    let repository: HomeRepositoryProtocol = RepositoryHome()
    var materias: [Subject] = []
    
    func createSubjects() {
        repository.getSubjects { (result) in
            switch result {
            case .success(let subjects):
                let result = self.create(subjects: subjects)
                self.controller?.setupCell(data: result)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func create(subjects: Subjects) -> [Subject] {
        
        var i = 0
        
        while i <= 5 {
            
            materias.append(Subject(teacher: subjects.teachers[i], subject: subjects.subjects[i]))
            
            i += 1
        }
        
        return materias
    }
    
    func showError() {
        
    }
    
    func showView(_ subject: Subject) {
        if let router = routerApp {
            router.categoriesViewController(subject)
        }
    }
}
