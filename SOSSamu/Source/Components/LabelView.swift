//
//  LabelView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 15/09/22.
//

import UIKit

class LabelView: UILabel {
    init(text: String, textColor: UIColor!, font:UIFont!, nLines: Int) {
        super.init(frame: .zero)
        self.textColor = textColor
        self.font = font
        self.text = text
        self.numberOfLines = nLines
        self.translatesAutoresizingMaskIntoConstraints = false

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
