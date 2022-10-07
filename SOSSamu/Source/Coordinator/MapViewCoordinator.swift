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

        viewController.onCallButton = {
            self.returnInfoJobView()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func returnInfoJobView() {
        
        let coordinator = InfoJobCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
}
