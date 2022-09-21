//
//  PositionView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 16/09/22.
//

import UIKit

class PositionView: UIView {
    
    lazy var view: UIView = {
        let view = UIView()
        view.backgroundColor = . clear
        view.layer.borderColor = .borderColor
        view.backgroundColor = .clear
        view.layer.borderWidth = 2
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .cellColor
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        addSubview(view)
        
        NSLayoutConstraint.activate([
            view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -25),
            view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 25),
            view.topAnchor.constraint(equalTo: self.topAnchor, constant: 60)])
    }
}
