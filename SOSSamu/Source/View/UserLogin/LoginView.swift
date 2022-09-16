//
//  LoginView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class LoginView: UIView {

    var  onTapLoginButton:(() -> Void)?
    
//    lazy var emailLabel: UILabel = {
//        let label = LabelView(text: "Digite seu email", textColor: .textColor, font: .systemFont(ofSize: 18, weight: .medium), nLines: .zero)
//        label.accessibilityLabel = "Digite seu email"
//        return label
//    }()
//
    lazy var CRM_CORENLabel: UILabel = {
        let label = LabelView(text: "Digite seu CRM ou COREN", textColor: .textColor, font: .systemFont(ofSize: 18, weight: .medium), nLines: .zero)
        label.accessibilityLabel = "Digite seu CRM ou COREN"
        return label
    }()
    
    lazy var senhaLabel: UILabel = {
        let label = LabelView(text: "Digite sua senha", textColor: .textColor, font: .systemFont(ofSize: 18, weight: .medium), nLines: .zero)
        label.accessibilityLabel = "Digite sua senha"
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = TextFieldView(font: UIFont(name: "Avenir Next", size: 15), placeholder: " exemplo@com", Keyboard: .emailAddress, borderStyle: .roundedRect)
        return textField
    }()
    
    lazy var CRM_CORENTextField: UITextField = {
        let textField = TextFieldView(font: UIFont(name: "Avenir Next", size: 15), placeholder: " CRM/COREM", Keyboard: .emailAddress, borderStyle: .roundedRect)
        return textField
    }()
    
    lazy var senhaTextField: UITextField = {
        let textField = TextFieldView(font: UIFont(name: "Avenir Next", size: 15), placeholder: " letras e números", Keyboard: .emailAddress, borderStyle: .roundedRect)
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = ButtonView(backgroundColor: .lightGray, titleColor: .black, text: "entrar", font: UIFont(name:"Helvica", size: 17.0), cRadius: 25, border: 0)
        
        return button
    }()
    
    // MARK: Init
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
       // setupEmailLabel()
        //setupEmailTextField()
        setupCRM_CORENLabel()
        setupCRM_CORENTextField()
        setupSenhaLabel()
        setupSenhaTextField()
        setupLoginButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Constraints
    
//    private func setupEmailLabel() {
//        addSubview(emailLabel)
//
//        NSLayoutConstraint.activate([
//            emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 180),
//            emailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
//            emailLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
//        ])
//    }
//    private func setupEmailTextField() {
//        addSubview(emailTextField)
//        NSLayoutConstraint.activate([
//            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 10),
//            emailTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
//            emailTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
//        ])
//    }
    
    private func setupCRM_CORENLabel() {
        addSubview(CRM_CORENLabel)
        
        NSLayoutConstraint.activate([
            CRM_CORENLabel.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            CRM_CORENLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            CRM_CORENLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    private func setupCRM_CORENTextField() {
        addSubview(CRM_CORENTextField)
        NSLayoutConstraint.activate([
            CRM_CORENTextField.topAnchor.constraint(equalTo: CRM_CORENLabel.bottomAnchor, constant: 10),
            CRM_CORENTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            CRM_CORENTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    
    private func setupSenhaLabel() {
        addSubview(senhaLabel)
        
        NSLayoutConstraint.activate([
            senhaLabel.topAnchor.constraint(equalTo: CRM_CORENTextField.bottomAnchor, constant: 20),
            senhaLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            senhaLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    
    private func setupSenhaTextField() {
        addSubview(senhaTextField)
        NSLayoutConstraint.activate([
            senhaTextField.topAnchor.constraint(equalTo: senhaLabel.bottomAnchor, constant: 10),
            senhaTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            senhaTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    
    private func setupLoginButton() {
        addSubview(loginButton)
        NSLayoutConstraint.activate([
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50 )
        ])
    }
    @objc func TapLoginButton(sender: UIButton) {
        self.onTapLoginButton?()
    }
}
