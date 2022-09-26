//
//  PositionViewCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallViewCoordinator: Coordinator {
    
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
        
        let viewController = DetailCallViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
            
    }
}
