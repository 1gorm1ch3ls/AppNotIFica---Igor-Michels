//
//  HomeViewController.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 15/06/23.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
}
