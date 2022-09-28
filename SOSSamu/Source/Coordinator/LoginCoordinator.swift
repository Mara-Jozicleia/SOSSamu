//
//  LoginCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewController = LoginViewController()
        viewController.onTapLoginButton = {
            self.showDetailCallView()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func showDetailCallView() {
        
        let coordinator = DetailCallViewCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
