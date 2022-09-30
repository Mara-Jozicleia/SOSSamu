//
//  PositionView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallView: UIView {
    
    lazy var descriptionLabel: UILabel = {
        let label = LabelView(text: "Descrição do Paciente", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Descrição do Paciente"
        
        for name in UIFont.familyNames {
            print(name)
        }
        return label
    }()
    
    lazy var descriptionPatientLabel: UILabel = {
        let view = UILabel()
        let label = LabelView(text: "Acidente de carro, envolvendo 3 vitimas, 1 inconsciente com sangramento na região da cabeça, 2 conscientes", textColor: .black, font: UIFont(name: "Agenda", size: 17), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.accessibilityLabel = "Localização"
        return label
    }()
    
    lazy var localizationTitleLabel: UILabel = {
        let label = LabelView(text: "Localização", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Localização"
        return label
    }()
    
    lazy var localPatientLabel: UILabel = {
        let label = LabelView(text: "Paciente", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Paciente"
        return label
    }()
    
    lazy var localiHospitalLabel: UILabel = {
        let label = LabelView(text: "Hospital", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Localização"
        return label
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
        let button = ButtonView(backgroundColor: .buttonColor, titleColor: .white, text: "Iniciar chamado", font: UIFont(name:"Euphemia UCAS", size: 20.0), cRadius: 25, border: 0)
        
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
        addSubview(descriptionPatientLabel)
        
        NSLayoutConstraint.activate([
            descriptionPatientLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12),
            descriptionPatientLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant:  -20),
            descriptionPatientLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            descriptionPatientLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
    
    private func setupLocalizationTitleLabel() {
        addSubview(localizationTitleLabel)
        
        NSLayoutConstraint.activate([
            localizationTitleLabel.topAnchor.constraint(equalTo: descriptionPatientLabel.bottomAnchor, constant: 80),
            localizationTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            localizationTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
            ])
    }
    
    private func setupFirstCardView() {
        addSubview(firstCardView)
        
        NSLayoutConstraint.activate([
            firstCardView.topAnchor.constraint(equalTo: localizationTitleLabel.bottomAnchor, constant: 20),
            firstCardView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
            firstCardView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.15),
            firstCardView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
            ])
    }
}
