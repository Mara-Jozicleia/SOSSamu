//
//  PositionViewCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class PositionViewCoordinator: Coordinator {
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        
    }
    
    func start() {
        let viewController = PositionViewController()
        viewController.title = "Posição das ambulâncias"

        if #available(iOS 15.0, *) {
            viewController.sheetPresentationController?.detents = [.large()]
            
        } else {
//            viewController.modalPresentationStyle
            viewController.accessibilityViewIsModal = true
            navigationController.present(viewController, animated: true, completion: nil)
        }
        self.navigationController.pushViewController(viewController, animated: true)

    }

}
