//
//  NovaOcorrenciaView.swift
//  AppNotIFica - Igor Michels
//
//  Created by IFBIOTIC06 on 22/06/23.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault{
    
    //MARK: - Inits
    
    //MARK: - Clouseres
    
    var onCameraTap:(()-> Void)?
    
    //MARK: - Proports
    
    lazy var imagem: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "imagemCamera")
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleTextField = textFieldDefault(placeholder: "Título", keyBoardType: .default, returnKeyType: .next)
    lazy var descriptionTextField = textFieldDefault(placeholder: "Descrição", keyBoardType: .default, returnKeyType: .next)
    lazy var localizationTextField = textFieldDefault(placeholder: "Localização", keyBoardType: .default, returnKeyType: .next)
    lazy var statusTextField = textFieldDefault(placeholder: "Status", keyBoardType: .default, returnKeyType: .done)
    
    lazy var saveButton = ButtonDefault(text: "Salvar")
    
    
    override func setupVisualElements() {
        
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField) 
        self.addSubview(localizationTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 5),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                    
            localizationTextField.widthAnchor.constraint(equalToConstant: 374),
            localizationTextField.heightAnchor.constraint(equalToConstant: 60),
            localizationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 5),
            localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                    
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 5),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
                    
                    
            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
        ])
    }
    
    @objc
    
    private func cameraTap(){
        self.onCameraTap?()
    }
    
    func setImage (image: UIImage){
            imagem.image = image
        }
}
