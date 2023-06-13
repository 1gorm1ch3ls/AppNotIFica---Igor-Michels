//
//  LabelDefault.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class LabelDefault: UILabel{
    
    init(text: String){
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String){
        self.text = text
        self.textColor = .textLabelColor
        self.font = UIFont(name: "SFProDisplay-Light", size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
