//
//  SignUpSubCategoriePresenter.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 21/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation

class SignUpSubCategoriePresenter: SignUpSubCategoriePresenterProtocol {
    
    var controller: SignUpSubCategorieViewControllerDelegate?
    
    func registerActive(nameActive: String?, teacher: String?, level: String?, workload: String?) {
        
        guard let name = nameActive, let teacher = teacher, let level = level, let workload = workload else {
            return
        }
        
        
        controller?.responseRegister(active: Active(nameActive: name, teacher: teacher,
                                                    level: level, workload: workload))
        
    }
}
