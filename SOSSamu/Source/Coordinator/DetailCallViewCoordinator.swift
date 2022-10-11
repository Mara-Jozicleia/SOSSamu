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
        
        viewController.onbackButton = {
            self.backInfoJobsView()
        }
        viewController.onCallButton = {
            self.showMapView()

        }
        
        viewController.modalPresentationStyle = .fullScreen
        viewController.accessibilityViewIsModal = true
        self.navigationController.present(viewController, animated: true, completion: nil)
            
    }
    
    private func backInfoJobsView() {
        let coordinator = InfoJobCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    
    private func showMapView() {
        let coordinator = MapViewCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    
}
