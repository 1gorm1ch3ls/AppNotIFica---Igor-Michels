//
//  TextFieldDefault.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class textFieldDefault: UITextField{
    
    init(text:String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text:String){

        self.backgroundColor = .textFieldBackGroundColor
        self.placeholder = text
        self.translatesAutoresizingMaskIntoConstraints = false

    }
}
