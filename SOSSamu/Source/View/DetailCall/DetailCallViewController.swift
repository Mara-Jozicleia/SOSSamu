//
//  PositionViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class DetailCallViewController: UIViewController {
    
    var detailCallView = DetailCallView()
    var  onCallButton:(() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        view = detailCallView

        detailCallView.onCallButton = {
            self.onCallButton?()
            self.dismiss(animated: true)
        }
    }
    
}
