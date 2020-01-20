//
//  HomeTableViewCell.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageSubject: UIImageView!
    @IBOutlet weak var nameSubjectLabel: UILabel!
    @IBOutlet weak var nameTeacherLabel: UILabel!
    
    
    func prepare(subject: Subject) {
        nameSubjectLabel.text = subject.subject
        nameTeacherLabel.text = "Professor(a): \(subject.teacher)"
    }
}
