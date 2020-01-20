//
//  CategoriesTableViewController.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class CategoriesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "signUpCategorie" {
            let vc = segue.destination as! SignUpSubCategorieViewController
        }
    }
    
}
