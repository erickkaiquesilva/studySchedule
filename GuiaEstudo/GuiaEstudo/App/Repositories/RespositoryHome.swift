//
//  RespositoryHome.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

enum HomeError: Error {
    case failureDecode
}

class RepositoryHome: HomeRepositoryProtocol {
    
    func getSubjects(completion: @escaping (Result<Subjects, Error>) -> Void) {
        
        let result: Subjects? = Decode.from("subjectsAndTeachers", withExtension: "json")
        
        guard let unwrapedResult = result else {
            completion(.failure(HomeError.failureDecode))
            return
        }
        
        completion(.success(unwrapedResult))
    }
}
