//
//  HomeCoordinator.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 15/06/23.
//

import Foundation
import UIKit

class HomeCoordinator : Coordinator{
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
