//
//  MenuViewCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 05/10/22.
//

import UIKit

class MenuViewCoordinator: Coordinator {
    
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        
        let viewController = MenuViewController()

        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func returnInfoJobView() {
        
        let coordinator = InfoJobCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
