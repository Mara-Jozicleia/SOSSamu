//
//  ButtonView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class ButtonView: UIButton {
    
    init(backgroundColor: UIColor?, titleColor: UIColor?, text: String, font: UIFont?, cRadius: CGFloat, border: CGFloat) {
        super.init(frame: . zero)
        self.backgroundColor = backgroundColor
        self.titleLabel?.font = font
        self.setTitleColor(titleColor, for: .normal)
        self.setTitle(text, for: .normal)
        self.layer.cornerRadius = cRadius
        self.layer.borderWidth = border
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
