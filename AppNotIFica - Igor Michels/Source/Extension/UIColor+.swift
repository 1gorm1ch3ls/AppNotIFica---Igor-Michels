//
//  UIColor+.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 12/06/23.
//

import Foundation
import UIKit

extension UIColor{
    
    static var viewBackGroundColor: UIColor{
        UIColor(named: "viewBackGroundColor") ?? .white
    }
    
    static var textLabelColor: UIColor{
        UIColor(named: "textLabelColor") ?? .lightGray
    }
    
    static var buttonBackGroundColor: UIColor{
        UIColor(named: "buttonBackGroundColor") ?? .black
    }
    
    static var textFieldBackGroundColor: UIColor{
        UIColor(named: "textFieldBackGroundColor") ?? .black
    }
    
    static var placeHolderColor: UIColor{
        UIColor(named: "placeHolderColor") ?? .white
    }
}
