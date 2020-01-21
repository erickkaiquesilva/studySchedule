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
    
    // MARK: - Properties
    
    
    var delegatedelegatePickerViewTeacher: UIPickerViewSignUpSubCategorieProtocol? = SignUpSubCategoriePickerViewDataSource()
    
    var delegatedelegatePickerViewLevel: UIPickerViewSignUpSubCategorieProtocol? = SignUpSubCategoriePickerViewDataSource()
    
    var teachers = ["Carlos", "João", "Isadora"]
    var level = ["Básico", "Intermediário", "Avançado"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegatedelegatePickerViewTeacher?.delegate = self
        
        selectedTeachers.dataSource = delegatedelegatePickerViewTeacher
        selectedTeachers.delegate = delegatedelegatePickerViewTeacher
        
        selectedNivel.delegate = delegatedelegatePickerViewLevel
        selectedNivel.dataSource = delegatedelegatePickerViewLevel
        
        teste()
    }
    
    func teste() {
        delegatedelegatePickerViewTeacher?.object(teachers)
        delegatedelegatePickerViewLevel?.object(level)
    }
    
    
    // MARK: - IBActions
    @IBAction func signUpActivity(_ sender: Any) {
        
    }
    
    @IBAction func closeSignUpActivity(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}


extension SignUpSubCategorieViewController: UIPickerViewSignUpDataSourceDelegate {
    func showError() {
        print("Vazio")
    }
}
