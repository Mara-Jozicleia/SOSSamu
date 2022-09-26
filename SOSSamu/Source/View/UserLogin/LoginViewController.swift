//
//  UserLoginViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView = LoginView()
    var onTapLoginButton:(() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.bindToKeyboard()
        
        view = loginView
        loginView.onTapLoginButton = {
            self.onTapLoginButton?()
        }
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view = loginView

    }
}
