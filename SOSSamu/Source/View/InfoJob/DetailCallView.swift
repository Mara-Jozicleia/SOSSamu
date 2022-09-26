//
//  PositionView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallView: UIView {
    
    lazy var descriptionLabel: UILabel = {
        let label = LabelView(text: "Descrição", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 20), nLines: .zero)
        label.accessibilityLabel = "Descrição"
        return label
    }()
    
    lazy var localizationTitleLabel: UILabel = {
        let label = LabelView(text: "Localização", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 20), nLines: .zero)
        label.accessibilityLabel = "Localização"
        return label
    }()
    
    lazy var localPatientLabel: UILabel = {
        let label = LabelView(text: "Paciente", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Paciente"
        return label
    }()
    
    lazy var localiHospitalLabel: UILabel = {
        let label = LabelView(text: "Localização", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Localização"
        return label
    }()
    
    lazy var descriptionView: UITextView = {
        let view = UITextView()
        view.layer.borderColor = .borderColor
        view.layer.borderWidth = 1.5
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var firstCardView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.borderColor = .borderColor
        view.layer.borderWidth = 1.5
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let button = ButtonView(backgroundColor: .buttonColor, titleColor: .white, text: "entrar", font: UIFont(name:"Euphemia UCAS", size: 20.0), cRadius: 25, border: 0)
        
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .viewColor
        setupDescriptionLabel()
        setupDescriptionView()
        setupLocalizationTitleLabel()
        setupFirstCardView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupDescriptionLabel() {
        addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
            descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
            ])
    }
    
    private func setupDescriptionView() {
        addSubview(descriptionView)
        
        NSLayoutConstraint.activate([
            descriptionView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            descriptionView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
            descriptionView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.15),
            descriptionView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
    
    private func setupLocalizationTitleLabel() {
        addSubview(localizationTitleLabel)
        
        NSLayoutConstraint.activate([
            localizationTitleLabel.topAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: 50),
            localizationTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            localizationTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
            ])
    }
    
    private func setupFirstCardView() {
        addSubview(firstCardView)
        
        NSLayoutConstraint.activate([
            firstCardView.topAnchor.constraint(equalTo: localizationTitleLabel.bottomAnchor, constant: 20),
            firstCardView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
            firstCardView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.35),
            firstCardView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
}
