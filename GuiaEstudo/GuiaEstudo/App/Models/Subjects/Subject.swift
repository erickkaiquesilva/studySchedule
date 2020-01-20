//
//  Subject.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

struct Subject {
    let teacher: String
    let subject: String
}

extension Subject: Equatable {
    static func ==(lhs: Subject, rhs: Subject) -> Bool {
        return lhs.subject == rhs.subject && lhs.teacher == rhs.teacher
    }
}
