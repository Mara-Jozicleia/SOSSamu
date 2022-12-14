//
//  MapViewCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 03/10/22.
//

import UIKit

class MapViewCoordinator: Coordinator {
    
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MapViewController()
        viewController.navigationItem.hidesBackButton = true
        
        viewController.onGoButton = {
            viewController.getDirections()
        }
        
        viewController.closeMap = {
            self.backDetailsView()
        }

        viewController.onFinishCallButton = {
            self.backInfoJobView()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    private func backDetailsView() {
        let coordinator = DetailCallViewCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    
    private func backInfoJobView() {
        let coordinator = InfoJobCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
