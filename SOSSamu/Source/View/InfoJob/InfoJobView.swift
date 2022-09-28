//
//  InfoJobView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import UIKit

class InfoJobView: UIView {
    lazy var welcomeUsers: UILabel = {
        let label = LabelView(text: "Olá", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Olá"
        return label
    }()
    
    lazy var jobLocationLabel: UILabel = {
        let label = LabelView(text: "Local de trabalho", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Local de trabalho"
        return label
    }()
    
    lazy var baseLocation: UILabel = {
        let label = LabelView(text: "Base Ipiranga", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Base Ipiranga"
        return label
    }()
    
    lazy var userAvailable: UILabel = {
        let label = LabelView(text: "Usuário disponível", textColor: .textColor, font: UIFont(name: "Euphemia UCAS", size: 17), nLines: .zero)
        label.accessibilityLabel = "Usuário disponível"
        return label
    }()
    

}
