//
//  TextFieldDefault.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class textFieldDefault: UITextField{
    
    init(placeholder:String){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: .default, returnKeyType: .default)
    }
    
    init(placeholder:String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType){
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyBoardType: keyBoardType, returnKeyType: returnKeyType)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeholder:String, keyBoardType: UIKeyboardType, returnKeyType: UIReturnKeyType){

        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.keyboardType = keyBoardType
        self.returnKeyType = returnKeyType
        self.translatesAutoresizingMaskIntoConstraints = false

    }
}
