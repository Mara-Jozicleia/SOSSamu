//
//  PositionView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallView: UIView {
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewO
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var chamadoLabel: UILabel = {
        let label = LabelView(text: "Chamado #234", textColor: .white, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.accessibilityLabel = "Chamado #234"
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = LabelView(text: "Descrição do Paciente", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Descrição do Paciente"
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
    
    
    
    lazy var descriptionView: UIView = {
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
        setupHeaderView()
        setupChamadoLabel()
        setupDescriptionView()
        setupDescriptionPatientLabel()
        setupLocalizationTitleLabel()
        setupHeaderView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHeaderView() {
        addSubview(headerView)
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            headerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            headerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            headerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.18),
            
        ])
    }
    
    private func setupChamadoLabel() {
        headerView.addSubview(chamadoLabel)
        
        NSLayoutConstraint.activate([
            chamadoLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            chamadoLabel.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -8),
            chamadoLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 8),
        ])
    }
    
    private func setupDescriptionView() {
        addSubview(descriptionView)
        
        NSLayoutConstraint.activate([
            descriptionView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 20),
            descriptionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            descriptionView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            descriptionView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.18),
            
        ])
    }
    
    private func setupDescriptionPatientLabel() {
        descriptionView.addSubview(descriptionPatientLabel)
        
        NSLayoutConstraint.activate([
            descriptionPatientLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 10),
            descriptionPatientLabel.rightAnchor.constraint(equalTo: descriptionView.rightAnchor, constant:  -10),
            descriptionPatientLabel.leftAnchor.constraint(equalTo: descriptionView.leftAnchor, constant: 10),
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
    
}
