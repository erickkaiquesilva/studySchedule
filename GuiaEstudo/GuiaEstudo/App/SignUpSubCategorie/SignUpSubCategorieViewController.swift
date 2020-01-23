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
    
    var subject: Subject?
    let levels = ["Básico", "Intermediário", "Avançado"]
    
    var actives: [Active] = []
    
    var presenter: SignUpSubCategoriePresenterProtocol = SignUpSubCategoriePresenter()
    
    var delegatedelegatePickerViewTeacher: UIPickerViewSignUpSubCategorieProtocol? = SignUpSubCategoriePickerViewDataSource()
    
    var delegatedelegatePickerViewLevel: UIPickerViewSignUpSubCategorieProtocol? = SignUpSubCategoriePickerViewDataSource()
    
    var selectedTeacher: String?
    var selectedLevel: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.controller = self
        
        delegatedelegatePickerViewTeacher?.delegate = self
        delegatedelegatePickerViewLevel?.delegate = self
        
        selectedTeachers.dataSource = delegatedelegatePickerViewTeacher
        selectedTeachers.delegate = delegatedelegatePickerViewTeacher
        
        selectedNivel.delegate = delegatedelegatePickerViewLevel
        selectedNivel.dataSource = delegatedelegatePickerViewLevel
        
        bindObjectPickerView()
    }
    
    func bindObjectPickerView() {
        guard let teacher = subject?.teacher else { return }
        delegatedelegatePickerViewTeacher?.object([teacher])
        delegatedelegatePickerViewLevel?.object(levels)
    }
    
    
    // MARK: - IBActions
    @IBAction func signUpActivity(_ sender: Any) {
        
        presenter.registerActive(nameActive: nameActivityTextField.text,
                                 teacher: selectedTeacher,
                                 level: selectedLevel,
                                 workload: workloadTextField.text)
    }
    
    @IBAction func closeSignUpActivity(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension SignUpSubCategorieViewController: SignUpSubCategorieViewControllerDelegate {
    func responseRegister(active: Active) {
        actives.append(active)
        
    }
}

extension SignUpSubCategorieViewController: UIPickerViewSignUpDataSourceDelegate {
    func showError() {
        print("Vazio")
    }
    
    func updatePickerView(_ string: String, pickerView: UIPickerView) {
        
        if selectedTeachers == pickerView {
            selectedTeacher = string
        } else {
            selectedLevel = string
        }
    }
}
