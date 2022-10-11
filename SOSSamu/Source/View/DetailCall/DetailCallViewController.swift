//
//  PositionViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallViewController: UIViewController {
    
    var detailCallView = DetailCallView()
    
    var onbackButton:(() -> Void)?
    var onCallButton:(() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        view = detailCallView
        detailCallView.onbackButton = {
            self.onbackButton?()
            self.dismiss(animated: true)
        }
        detailCallView.onCallButton = {
            self.onCallButton?()
            self.dismiss(animated: true)
        }
    }
    
}
