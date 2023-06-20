//
//  ViewControllerDefault.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 15/06/23.
//

import Foundation
import UIKit

class ViewControllerDefault: ViewController{
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyBoardByTappinoutSide))
        
        self.view.addGestureRecognizer(tap)
    
        }
    
        @objc
        func hideKeyBoardByTappinoutSide(){
            self.view.endEditing(true)
            
        }
}

