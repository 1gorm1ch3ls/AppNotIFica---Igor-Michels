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
        self.backgroundColor = .white
        setupVisualElements()
    }
    
    var imageLogin: UIImageView = {
        let imagem = UIImageView()
        imagem.image = UIImage(named: "ImagemLogin")
        imagem.contentMode = .scaleAspectFit
        imagem.translatesAutoresizingMaskIntoConstraints = false
        
        return imagem
    }()
    
    var imageLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red: 0.541, green: 0.541, blue: 0.557, alpha: 1)
        label.font = UIFont(name: "SFProDisplay-Light", size: 16)
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var email: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "E-mail"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    var senha: UITextField = {
        let textField = UITextField()
        textField.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        textField.placeholder = "Senha"
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    var logar: UIButton = {
        let botao = UIButton()
        botao.setTitle("LOGAR", for: .normal)
        botao.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        botao.layer.cornerRadius = 14
        botao.translatesAutoresizingMaskIntoConstraints = false
        
        return botao
    }()
    
    var registrar: UIButton = {
        let botao = UIButton()
        botao.setTitle("REGISTRAR", for: .normal)
        botao.layer.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1).cgColor
        botao.layer.cornerRadius = 14
        botao.translatesAutoresizingMaskIntoConstraints = false
        
        return botao
    }()
    
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
