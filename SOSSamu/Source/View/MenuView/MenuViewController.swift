//
//  MenuViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 05/10/22.
//

import UIKit

class MenuViewController: UIViewController {

    var menuView = MenuView()
    
    var onbackButton:(() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        view = menuView
        menuView.onbackButton = {
            self.onbackButton?()
        }
    }
    
}
