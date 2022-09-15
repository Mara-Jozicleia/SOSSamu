//
//  UserLoginViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    let userLoginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        view = userLoginView

    }
}
