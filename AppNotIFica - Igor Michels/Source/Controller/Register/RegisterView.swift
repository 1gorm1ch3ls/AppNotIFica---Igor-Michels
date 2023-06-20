//
//  RegisterView.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 13/06/23.
//

import Foundation
import UIKit

class RegisterView: ViewDefault{
    
    var onLoginTap: (() -> Void)?
    
    var imageLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar", font: UIFont.systemFont(ofSize: 17, weight: .regular))
    
    var email = textFieldDefault(placeholder: "E-mail" , keyBoardType: .emailAddress, returnKeyType: .next)
    
    var senha: textFieldDefault = {
        let text = textFieldDefault(placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .next)
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var confirmarSenha: textFieldDefault = {
        let text = textFieldDefault(placeholder: "Confirmar Senha", keyBoardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var registrar = ButtonDefault(text: "REGISTRAR")
    
    var logar = ButtonDefault(text: "ENTRAR")
    
    override  func setupVisualElements(){
        
        email.delegate = self
        senha.delegate = self
        confirmarSenha.delegate = self
        super.setupVisualElements()
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
    
    @objc
    private func loginTap(){
        onLoginTap?()
    }
    
}

extension RegisterView: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        if textField == email{
            self.senha.becomeFirstResponder()
        }else if textField == senha{
            self.confirmarSenha.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
