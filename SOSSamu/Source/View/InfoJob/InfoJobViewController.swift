//
//  InfoJobViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import UIKit

class InfoJobViewController: UIViewController {

    var infoJobView = InfoJobView()
    var onTapAlertButton:(() -> Void)?
    var onTapMenuButton:(() -> Void)?


    override func viewDidLoad() {
        super.viewDidLoad()
        view = infoJobView
        
        infoJobView.onTapAlertButton = {
            self.onTapAlertButton?()
        }
        infoJobView.onTapMenuButton = {
            self.onTapMenuButton?()
        }
    }
}
