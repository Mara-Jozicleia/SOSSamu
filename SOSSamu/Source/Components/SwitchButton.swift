//
//  SwitchButton.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 30/09/22.
//

import UIKit

final class SwitchButton: UISwitch {
    
    private var isChecked = false
    
    let height: CGFloat = 20
    let width: CGFloat = 50
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.onTintColor = .switchBColor
        self.tintColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    

}
