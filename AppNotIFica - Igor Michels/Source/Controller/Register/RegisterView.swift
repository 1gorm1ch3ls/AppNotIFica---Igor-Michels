//
//  RegisterView.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class RegisterView: UIView{
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        setupVisualElements()
    }
    
    var onLoginTap: (() -> Void)?
    
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    var email = textFieldDefault(placeholder: "E-mail")
    
    var senha = textFieldDefault(placeholder: "Senha" )
    
    var confirmarSenha = textFieldDefault(placeholder: "Confirmar senha" )
    
    var registrar = ButtonDefault(text: "REGISTRAR")
    
    var logar = ButtonDefault(text: "ENTRAR")
    
    func setupVisualElements(){
        
        self.addSubview(imageLabel)
        self.addSubview(email)
        self.addSubview(senha)
        self.addSubview(confirmarSenha)
        self.addSubview(registrar)
        self.addSubview(logar)
        
        logar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
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
            
            confirmarSenha.widthAnchor.constraint(equalToConstant: 374),
            confirmarSenha.heightAnchor.constraint(equalToConstant: 60),
            confirmarSenha.topAnchor.constraint(equalTo: senha.bottomAnchor, constant: 23),
            confirmarSenha.leadingAnchor.constraint(equalTo:self.leadingAnchor, constant: 16),
            confirmarSenha.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            registrar.widthAnchor.constraint(equalToConstant: 374),
            registrar.heightAnchor.constraint(equalToConstant: 60),
            registrar.topAnchor.constraint(equalTo: confirmarSenha.bottomAnchor, constant: 23),
            registrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            registrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            logar.widthAnchor.constraint(equalToConstant: 374),
            logar.heightAnchor.constraint(equalToConstant: 60),
            logar.topAnchor.constraint(equalTo: registrar.bottomAnchor, constant: 23),
            logar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            logar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
                
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
    
}
