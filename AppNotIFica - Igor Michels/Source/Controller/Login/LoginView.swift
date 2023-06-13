//
//  LoginView.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 12/06/23.
//

import Foundation
import UIKit

class LoginView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
    }
    
    var imageLogin = ImageDefault(image: "ImagemLogin")
    
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    var email = textFieldDefault(placeholder: "E-mail")
    
    var senha = textFieldDefault(placeholder: "Senha" )
    
    var logar = ButtonDefault(text: "LOGAR")
    
    var registrar = ButtonDefault(text: "REGISTRAR")
    
    func setupVisualElements(){
        
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(email)
        self.addSubview(senha)
        self.addSubview(logar)
        self.addSubview(registrar)
        
        
        NSLayoutConstraint.activate([
            
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant:228),
            imageLogin.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            email.widthAnchor.constraint(equalToConstant: 374),
            email.heightAnchor.constraint(equalToConstant: 60),
            email.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            email.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 16),
            email.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senha.widthAnchor.constraint(equalToConstant: 374),
            senha.heightAnchor.constraint(equalToConstant: 60),
            senha.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 23),
            senha.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 16),
            senha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            logar.widthAnchor.constraint(equalToConstant: 374),
            logar.heightAnchor.constraint(equalToConstant: 60),
            logar.topAnchor.constraint(equalTo: senha.bottomAnchor, constant: 23),
            logar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            logar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            registrar.widthAnchor.constraint(equalToConstant: 374),
            registrar.heightAnchor.constraint(equalToConstant: 60),
            registrar.topAnchor.constraint(equalTo: logar.bottomAnchor, constant: 23),
            registrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            registrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
