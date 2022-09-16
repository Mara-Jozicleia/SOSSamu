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
        let viewController = PositionView()
        
        if #available(iOS 15.0, *) {
            viewController.sheetPresentationController?.detents = [.large()]
            
        } else {
            viewController.modalPresentationSt
            viewController.accessibilityViewIsModal = true
            navigationController.present(viewController, animated: true, completion: nil)
        }
    }

}
