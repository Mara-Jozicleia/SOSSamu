//
//  InfoJobCoordinator.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import Foundation
import UIKit

class InfoJobCoordinator: Coordinator {
        
    var navigationController = UINavigationController()
    
    init(navigationController: UINavigationController) {
        
        self.navigationController = navigationController
        
    }
    
    func start() {
        
        let viewController = InfoJobViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
            
    }

}
