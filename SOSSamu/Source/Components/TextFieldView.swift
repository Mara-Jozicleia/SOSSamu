//
//  TextFieldView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class TextFieldView: UITextField {
    let padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    
    init(font: UIFont?, placeholder: String, Keyboard: UIKeyboardType, borderStyle: BorderStyle) {
        super.init(frame: .zero)
        self.font = font
        self.placeholder = placeholder
        self.keyboardType = Keyboard
        self.borderStyle = borderStyle
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
