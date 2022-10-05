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
        label.accessibilityLabel = label.text
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = LabelView(text: "Descrição do Paciente", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.textAlignment = .center
        label.accessibilityLabel = label.text
        return label
    }()
    
    lazy var descriptionPatientLabel: UILabel = {
        let view = UILabel()
        let label = LabelView(text: "Colisão de 2 carros, com 3 vítimas envolvidas. Duas com ferimentos leves e uma com ferimentos graves e com sangramento na região da cabeça.", textColor: .black, font: UIFont(name: "Agenda", size: 18), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.accessibilityLabel = label.text
        return label
    }()
    

    lazy var localPatientLabel: UILabel = {
        let label = LabelView(text: "Localização paciente", textColor: .textColor, font: UIFont(name: "Agenda", size: 18), nLines: .zero)
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.accessibilityLabel = label.text
        return label
    }()
    
    lazy var patientAdressLabel: UILabel = {
        let label = LabelView(text: "Rua Cidade Beloma, 123 - Ipiranga", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)

        label.accessibilityLabel = label.text
        return label
    }()
    lazy var locationPatientStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [localPatientLabel, patientAdressLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var localHospitalLabel: UILabel = {
        let label = LabelView(text: "Localização hospital", textColor: .textColor, font: UIFont(name: "Agenda", size: 18), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textAlignment = .left
        label.accessibilityLabel = label.text
        return label
    }()
    
    lazy var hospitalAdressLabel: UILabel = {
        let label = LabelView(text: "Rua Santos Dumond, 123 - Ipiranga", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.accessibilityLabel = label.text
        return label
    }()
    lazy var locationHospitalStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [localHospitalLabel, hospitalAdressLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .fill
        stack.spacing = 10
        stack.backgroundColor = .yellow
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
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

    lazy var locationView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var loginButton: UIButton = {
        let button = ButtonView(backgroundColor: .buttonColor, titleColor: .white, text: "Iniciar chamado", font: UIFont(name:"Agenda", size: 20.0), cRadius: 25, border: 0)
        
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .viewColor
        setupHeaderView()
        setupChamadoLabel()
        setupDescriptionView()
        setupDescriptionLabel()
        setupDescriptionPatientLabel()
        setupLocationView()
        setupLocationPatientStackView()
        setupLocationHospitalStackView()
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
            descriptionView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 50),
            descriptionView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            descriptionView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            descriptionView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.18),
            
        ])
    }
    
    private func setupDescriptionLabel() {
        descriptionView.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 18),
            descriptionLabel.rightAnchor.constraint(equalTo: descriptionView.rightAnchor, constant: -8),
            descriptionLabel.leftAnchor.constraint(equalTo: descriptionView.leftAnchor, constant: 8),
        ])
    }
    
    private func setupDescriptionPatientLabel() {
        descriptionView.addSubview(descriptionPatientLabel)
        
        NSLayoutConstraint.activate([
            descriptionPatientLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            descriptionPatientLabel.rightAnchor.constraint(equalTo: descriptionView.rightAnchor, constant:  -10),
            descriptionPatientLabel.leftAnchor.constraint(equalTo: descriptionView.leftAnchor, constant: 12),
        ])
    }
    
    private func setupLocationView() {
        addSubview(locationView)
        
        NSLayoutConstraint.activate([
            locationView.topAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: 30),
            locationView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10),
            locationView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            locationView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.18),
            
        ])
    }
        private func setupLocationPatientStackView() {
            locationView.addSubview(locationPatientStackView)
            
            NSLayoutConstraint.activate([
                locationPatientStackView.topAnchor.constraint(equalTo: locationView.topAnchor, constant: 10),
                locationPatientStackView.rightAnchor.constraint(equalTo: locationView.rightAnchor, constant: -8),
                locationPatientStackView.leftAnchor.constraint(equalTo: locationView.leftAnchor, constant: 8),
            ])
        }
    private func setupLocationHospitalStackView() {
        locationView.addSubview(locationHospitalStackView)
        
        NSLayoutConstraint.activate([
            locationHospitalStackView.topAnchor.constraint(equalTo: locationPatientStackView.bottomAnchor, constant: 20),
            locationHospitalStackView.rightAnchor.constraint(equalTo: locationView.rightAnchor, constant: -8),
            locationHospitalStackView.leftAnchor.constraint(equalTo: locationView.leftAnchor, constant: 8),
        ])
    }
    }
