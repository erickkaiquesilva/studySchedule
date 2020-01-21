//
//  SignUpSubCategorieProtocols.swift
//  GuiaEstudo
//
//  Created by Erick Kaique Da Silva on 21/01/20.
//  Copyright © 2020 Erick Kaique Da Silva. All rights reserved.
//

import Foundation
import UIKit

protocol UIPickerViewSignUpSubCategorieProtocol: UIPickerViewDelegate, UIPickerViewDataSource {
    var delegate: UIPickerViewSignUpDataSourceDelegate? { get set }
    func object(_ object: [String])
}

protocol UIPickerViewSignUpDataSourceDelegate: class {
    func showError()
}
