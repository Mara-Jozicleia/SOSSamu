//
//  InfoJobView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import UIKit

class InfoJobView: UIView {
    
    var alertImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "alerta")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var welcomeUsersLabel: UILabel = {
        
        let label = LabelView(text: "Olá", textColor: .textColor, font: UIFont(name: "Agenda", size: 22), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        label.accessibilityLabel = "Olá"
        return label
    }()
    
    lazy var jobLocationLabel: UILabel = {
        let label = LabelView(text: "Local de trabalho:", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Local de trabalho"
        return label
    }()
    
    lazy var baseLocationLabel: UILabel = {
        let label = LabelView(text: "Base Ipiranga", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Base Ipiranga"
        return label
    }()
    
    lazy var userAvailableLabel: UILabel = {
        let label = LabelView(text: "Está disponível?", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.accessibilityLabel = "Está disponível?"
        return label
    }()
    
    lazy var availableButton: UISwitch = {
        let button = SwitchButton()
        button.addTarget(self, action: #selector(selectAvailable), for: .valueChanged)
        return button
    }()
    
    lazy var container: UIView = {
        let view = UIView()
        view.layer.borderColor = .borderColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 12
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var availableStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [userAvailableLabel, availableButton])
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
       // stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .viewColor
        setupWelcomeUsersLabel()
        setupContainer()
        setupJobLocationLabel()
        setupBaseLocationLabel()
        setupAvailableStackView()
        setupFooterView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupWelcomeUsersLabel() {
        addSubview(welcomeUsersLabel)
        
        NSLayoutConstraint.activate([
            welcomeUsersLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            welcomeUsersLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            welcomeUsersLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
        ])
    }
    
    private func setupContainer() {
        addSubview(container)
        
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: welcomeUsersLabel.bottomAnchor, constant: 50),
            container.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
            container.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25),
            container.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
    private func setupJobLocationLabel() {
        container.addSubview(jobLocationLabel)
        
        NSLayoutConstraint.activate([
            jobLocationLabel.topAnchor.constraint(equalTo: container.topAnchor, constant: 20),
            jobLocationLabel.rightAnchor.constraint(equalTo: container.rightAnchor, constant:  -10),
            jobLocationLabel.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 10)
        ])
    }
    
    private func setupBaseLocationLabel() {
        container.addSubview(baseLocationLabel)
        
        NSLayoutConstraint.activate([
            baseLocationLabel.topAnchor.constraint(equalTo: jobLocationLabel.bottomAnchor, constant: 20),
            baseLocationLabel.rightAnchor.constraint(equalTo: container.rightAnchor, constant:  -10),
            baseLocationLabel.leftAnchor.constraint(equalTo: container.leftAnchor, constant: 10),
           // baseLocationLabel.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -6)
        ])
    }
    
    private func setupAvailableStackView() {
        addSubview(availableStackView)
        
        NSLayoutConstraint.activate([
            userAvailableLabel.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 30),
            availableStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            availableStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 32),
            //availableStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50)
        ])
    }
    
    private func setupFooterView() {
        addSubview(footerView)
        
        NSLayoutConstraint.activate([
            footerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            footerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            footerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            footerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.15),

            //availableStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50)
        ])
    }
    
    @objc func selectAvailable() {
        if availableButton.isOn {
            print("on")
        }
    }
}

//    private func setupFirstCardView() {
//        addSubview(firstCardView)
//        
//        NSLayoutConstraint.activate([
//            firstCardView.topAnchor.constraint(equalTo: localizationTitleLabel.bottomAnchor, constant: 20),
//            firstCardView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
//            firstCardView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.15),
//            firstCardView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
//        ])
//    }
