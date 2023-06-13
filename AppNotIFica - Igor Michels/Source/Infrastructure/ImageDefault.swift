//
//  ImageDefault.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class ImageDefault: UIImageView{
    
    init(image: String){
        super.init(frame: .zero)
        initDefault(image: image)
    }
    
    private func initDefault(image: String){
        self.image = UIImage(named: "ImagemLogin")
        self.contentMode = .scaleAspectFit
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
