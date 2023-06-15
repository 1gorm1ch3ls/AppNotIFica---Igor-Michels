//
//  LoginViewController.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 12/06/23.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault{
    
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        
        let loginView = LoginView()
        loginView.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        loginView.onLoginTap = {
            self.onLoginTap?()
        }
        
        return loginView
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Entrar"
    }
}
