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
        viewController.navigationItem.hidesBackButton = true
        
        viewController.onbackButton = {
            self.returnInfoJobView()
        }

        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func returnInfoJobView() {
        
     //   let coordinator = UINavigationController.pushViewController(InfoJobViewController as UIViewController)
        //coordinator.start()
    }
}
