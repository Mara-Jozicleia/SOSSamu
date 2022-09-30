//
//  InfoJobView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 28/09/22.
//

import UIKit

class InfoJobView: UIView {
    lazy var welcomeUsers: UILabel = {
        let label = LabelView(text: "Olá", textColor: .textColor, font: UIFont(name: "Agenda", size: 17), nLines: .zero)
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


private func setupDescriptionLabel() {
    addSubview(descriptionLabel)
    
    NSLayoutConstraint.activate([
        descriptionLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 150),
        descriptionLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
        descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
        ])
}

private func setupDescriptionView() {
    addSubview(descriptionPatientLabel)
    
    NSLayoutConstraint.activate([
        descriptionPatientLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 12),
        descriptionPatientLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant:  -20),
        descriptionPatientLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
        descriptionPatientLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
}

private func setupLocalizationTitleLabel() {
    addSubview(localizationTitleLabel)
    
    NSLayoutConstraint.activate([
        localizationTitleLabel.topAnchor.constraint(equalTo: descriptionPatientLabel.bottomAnchor, constant: 80),
        localizationTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
        localizationTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 22),
        ])
}

private func setupFirstCardView() {
    addSubview(firstCardView)
    
    NSLayoutConstraint.activate([
        firstCardView.topAnchor.constraint(equalTo: localizationTitleLabel.bottomAnchor, constant: 20),
        firstCardView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.88),
        firstCardView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.15),
        firstCardView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
}
}
