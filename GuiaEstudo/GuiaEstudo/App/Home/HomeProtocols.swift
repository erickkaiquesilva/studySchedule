//
//  HomeProtocols.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

protocol HomePresenterDelegate: class {
    var controller: HomeTableViewControllerDelegate? { get set }
    func createSubjects()
    func showView(_ subject: Subject)
}

protocol HomeTableViewControllerDelegate: class {
    func setupCell(data: [Subject])
}

protocol HomeRepositoryProtocol {
    func getSubjects(completion: @escaping (Result<Subjects, Error>) -> Void)
}
