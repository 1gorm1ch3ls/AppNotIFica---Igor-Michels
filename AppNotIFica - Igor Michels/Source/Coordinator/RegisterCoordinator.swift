//
//  RegisterCoordinator.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class RegisterCoordinator : Coordinator{
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
        viewController.onLoginTap = {
            self.gotoLogin()
        }
    }
    
    func gotoLogin(){
        self.navigationController.popViewController(animated: true)
        //let coordinator = LoginCoordinator(navigationController: navigationController)
        //coordinator.start()
    }

}
