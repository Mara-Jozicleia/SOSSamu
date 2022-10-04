//
//  InfoJobView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import UIKit

class InfoJobView: UIView {
    
    var onTapAlertButton:(() -> Void)?

    var menuIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "menu")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var welcomeUsersLabel: UILabel = {
        
        let label = LabelView(text: "Olá", textColor: .white, font: UIFont(name: "Agenda", size: 24), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
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
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewO
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var container: UIView = {
        let view = UIView()
        view.layer.borderColor = .borderColor
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 12
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var availableStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [userAvailableLabel, availableButton])
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.alignment = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        return stack
    }()
    
    lazy var footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewO
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var alertButton: UIButton = {
        let button = ButtonView(backgroundColor: .viewO, titleColor: .white, text: "Entrar", font: UIFont(name:"Agenda", size: 20.0), cRadius: 25, border: 0)
        button.setImage(UIImage(named: "alert"), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    

    init() {
        super.init(frame: .zero)
        backgroundColor = .viewColor
        setupHeaderView()
        setupWelcomeUsersLabel()
        setupMenuIcon()
        setupContainer()
        setupJobLocationLabel()
        setupBaseLocationLabel()
        setupAvailableStackView()
        setupFooterView()
        setupAlertImage()
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
    
    private func setupWelcomeUsersLabel() {
        headerView.addSubview(welcomeUsersLabel)
        
        NSLayoutConstraint.activate([
            welcomeUsersLabel.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -20),
            welcomeUsersLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 22),
            welcomeUsersLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10)
        ])
    }
    private func setupMenuIcon() {
        headerView.addSubview(menuIcon)
        
        let kheight: CGFloat = 35
        let kwidth: CGFloat = 35
        
        NSLayoutConstraint.activate([
            menuIcon.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
            menuIcon.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -10),
            menuIcon.heightAnchor.constraint(equalToConstant: kheight),
            menuIcon.widthAnchor.constraint(equalToConstant: kwidth)
            ])
    }
    
    private func setupContainer() {
        addSubview(container)
        
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 80),
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
        ])
    }
    
    private func setupAvailableStackView() {
        addSubview(availableStackView)
        
        NSLayoutConstraint.activate([
            userAvailableLabel.topAnchor.constraint(equalTo: container.bottomAnchor, constant: 50),
            availableStackView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            availableStackView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 32),
        ])
    }
    
    private func setupFooterView() {
        addSubview(footerView)
        
        NSLayoutConstraint.activate([
            footerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            footerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            footerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            footerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.08),

        ])
    }
    
    private func setupAlertImage() {
        footerView.addSubview(alertButton)
        let kheight: CGFloat = 50
        let kwidth: CGFloat = 50
        
        alertButton.addTarget(self, action: #selector(onAlertButton), for: .touchUpInside)

        NSLayoutConstraint.activate([
            alertButton.bottomAnchor.constraint(equalTo: footerView.bottomAnchor, constant: -8),
            alertButton.centerXAnchor.constraint(equalTo: footerView.centerXAnchor),
            alertButton.heightAnchor.constraint(equalToConstant: kheight),
            alertButton.widthAnchor.constraint(equalToConstant: kwidth)
        ])
    }
    
    
    @objc func onAlertButton(sender: UIButton) {
        self.onTapAlertButton?()
    }
    
    @objc func selectAvailable() {
        if availableButton.isOn {
            print("on")
        }
    }
}
