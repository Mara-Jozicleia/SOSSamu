//
//  PositionViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class PositionViewController: UIViewController {
    
    var positionView = PositionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view = positionView
        view.backgroundColor = .viewColor
        view.layer.cornerRadius = 20
    }

}
