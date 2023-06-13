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
        initDefault(placeholder: placeholder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeholder:String){

        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false

    }
}
