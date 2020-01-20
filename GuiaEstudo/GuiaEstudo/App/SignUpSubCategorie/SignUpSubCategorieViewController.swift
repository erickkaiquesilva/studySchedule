//
//  SignUpSubCategorieViewController.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 20/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class SignUpSubCategorieViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleViewLabel: UILabel!
    @IBOutlet weak var nameActivityTextField: UITextField!
    @IBOutlet weak var selectedTeachers: UIPickerView!
    @IBOutlet weak var selectedNivel: UIPickerView!
    @IBOutlet weak var workloadTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func signUpActivity(_ sender: Any) {
        
    }
}
