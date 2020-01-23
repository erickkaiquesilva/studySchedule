//
//  RouterApp.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 22/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class RouterApp: UINavigationController, RouterAppProtocol {
    
    var currentViewControllers: [UIViewController] = []
    
    func viewDefault() {
        if let destinationVC = storyboard?.instantiateViewController(identifier: "HomeTableViewController") as? HomeTableViewController {
            
            self.currentViewControllers.append(destinationVC)
            self.pushViewController(destinationVC, animated: true)
        }
    }
    
    func categoriesViewController(_ subject: Subject) {

        if let destinationVC = storyboard?.instantiateViewController(identifier: "CategoriesTableViewController") as? CategoriesTableViewController {
            self.currentViewControllers.append(destinationVC)
            destinationVC.subject = subject
            self.pushViewController(destinationVC, animated: true)
        }
    }
    
    func signUpActivytiViewController(_ subject: Subject) {
        
        if let destinationVC = storyboard?.instantiateViewController(identifier: "SignUpSubCategorieViewController") as? SignUpSubCategorieViewController {
            self.currentViewControllers.append(destinationVC)
            destinationVC.subject = subject
            self.present(destinationVC, animated: true, completion: nil)
        }
    }
}

