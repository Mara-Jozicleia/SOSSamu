//
//  MenuView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 05/10/22.
//

import UIKit

class MenuView: UIView {
    
    var onbackButton:(() -> Void)?

    var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "life")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    lazy var backButton: UIButton = {
        let button = ButtonView(backgroundColor: .viewColor, titleColor: .textColor, text: "←", font: UIFont(name:"Agenda", size: 25), cRadius: 0, border: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        return button
    }()
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var sView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewO
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameUsersLabel: UILabel = {
        
        let label = LabelView(text: "Luis Kalil", textColor: .textColor, font: UIFont(name: "Agenda", size: 24), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.accessibilityLabel = label.text
        return label
    }()

    let icon = ["profile", "suporte", "doc", "logout"]
    let text = ["Minha conta", "Suporte", "Política de privacidade", "Sair"]
    
    lazy var stackView: UIStackView = {
        let stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.alignment = .fill
        stackview.spacing = 24
        stackview.translatesAutoresizingMaskIntoConstraints = false
        for index in 0...3 {
            let label = LabelView(text: text[index], textColor: .white, font: UIFont(name: "Agenda", size: 24), nLines: 0)
            let iconImage = UIImageView()
            iconImage.heightAnchor.constraint(equalTo: iconImage.widthAnchor,multiplier: 1.0/1.0).isActive = true

            iconImage.image = UIImage(named: icon[index])
            
            let stack = UIStackView(arrangedSubviews: [iconImage, label])
            stack.spacing = 16
            stack.axis = .horizontal
            stack.distribution = .fill
            stack.alignment = .fill
            stack.translatesAutoresizingMaskIntoConstraints = false

            stackview.addArrangedSubview(stack)
        }
  
        return stackview
    }()
    
    init() {
        super.init(frame: .zero)
        setupHeaderView()
        setupBackButtonImage()
        setupLogoImage()
        setupNameUsersLabel()
        setupsView()
        setupStackView()
        backgroundColor = .viewO
        
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
            headerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25),
            
        ])
    }
    private func setupBackButtonImage() {
        headerView.addSubview(backButton)
        
        backButton.addTarget(self, action: #selector(TapbackButton), for: .touchUpInside)

        let kheight: CGFloat = 35
        let kwidth: CGFloat = 35
        
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 80),
            backButton.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 15),
            backButton.heightAnchor.constraint(equalToConstant: kheight),
            backButton.widthAnchor.constraint(equalToConstant: kwidth)

        ])
    }
    private func setupLogoImage() {
        headerView.addSubview(logoImage)
        
        let kheight: CGFloat = 50
        let kwidth: CGFloat = 50
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 70),
            logoImage.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -10),
            logoImage.heightAnchor.constraint(equalToConstant: kheight),
            logoImage.widthAnchor.constraint(equalToConstant: kwidth)
        ])
    }
    private func setupNameUsersLabel() {
        headerView.addSubview(nameUsersLabel)
        
        NSLayoutConstraint.activate([
            nameUsersLabel.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -20),
            nameUsersLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 22),
            nameUsersLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10)
        ])
    }
    
    private func setupsView() {
        addSubview(sView)
        
    NSLayoutConstraint.activate([
        sView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        sView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
        sView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
        sView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25),
        
    ])
}
    private func setupStackView() {
        sView.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: sView.centerYAnchor),
            stackView.rightAnchor.constraint(equalTo: sView.rightAnchor, constant: -20),

            stackView.leftAnchor.constraint(equalTo: sView.leftAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: sView.bottomAnchor, constant: -20)
        ])
    }
    
    @objc func TapbackButton(sender: UIButton) {
        self.onbackButton?()
    }
}
