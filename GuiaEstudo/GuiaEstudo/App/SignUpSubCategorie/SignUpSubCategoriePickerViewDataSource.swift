//
//  SignUpSubCategoriePickerViewDataSource.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 21/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

class SignUpSubCategoriePickerViewDataSource: NSObject, UIPickerViewSignUpSubCategorieProtocol {
    
    weak var delegate: UIPickerViewSignUpDataSourceDelegate?
    
    private var items = Array<String>()
    
    func object(_ object: [String]) {
        
        items = object
    }
}

extension SignUpSubCategoriePickerViewDataSource: UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if items.count == 0 {

            return "OPS!!! Falha."
        }
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        delegate?.updatePickerView(items[row], pickerView: pickerView)
    }
}
