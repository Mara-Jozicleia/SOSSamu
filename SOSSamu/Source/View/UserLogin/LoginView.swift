//
//  LoginView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class LoginView: UIView {

    var  onTapLoginButton:(() -> Void)?
    
    lazy var idUserLabel: UILabel = {
        let label = LabelView(text: "Digite seu IDuser", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Digite seu IDuser"
        return label
    }()
    
    lazy var senhaLabel: UILabel = {
        let label = LabelView(text: "Digite sua senha", textColor: .textColor, font: UIFont(name: "Agenda", size: 20), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.accessibilityLabel = "Digite sua senha"
        return label
    }()
    
    lazy var idUserTextField: UITextField = {
        let textField = TextFieldView(font: UIFont(name: "Arial", size: 14), placeholder: " O mesmo que você utiliza para logar no sistema", Keyboard: .default, borderStyle: .roundedRect)
        return textField
    }()
    
    lazy var senhaTextField: UITextField = {
        let textField = TextFieldView(font: UIFont(name: "Arial", size: 14), placeholder: "", Keyboard: .default, borderStyle: .roundedRect)
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = ButtonView(backgroundColor: .orange, titleColor: .white, text: "entrar", font: UIFont(name:"Agenda", size: 25.0), cRadius: 25, border: 0)
        return button
    }()
    
    // MARK: Init
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .white
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
    
    private func setupCRM_CORENLabel() {
        addSubview(idUserLabel)
        
        NSLayoutConstraint.activate([
            idUserLabel.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            idUserLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            idUserLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    private func setupCRM_CORENTextField() {
        addSubview(idUserTextField)
        NSLayoutConstraint.activate([
            idUserTextField.topAnchor.constraint(equalTo: idUserLabel.bottomAnchor, constant: 10),
            idUserTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
            idUserTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
        ])
    }
    
    private func setupSenhaLabel() {
        addSubview(senhaLabel)
        
        NSLayoutConstraint.activate([
            senhaLabel.topAnchor.constraint(equalTo: idUserTextField.bottomAnchor, constant: 20),
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
        
        loginButton.addTarget(self, action: #selector(TapLoginButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            loginButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 45),
            loginButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -45),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -22 )
        ])
    }
    
    @objc func TapLoginButton(sender: UIButton) {
        self.onTapLoginButton?()
    }
}
