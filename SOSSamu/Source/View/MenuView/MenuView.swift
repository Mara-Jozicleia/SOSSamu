//
//  MenuView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 05/10/22.
//

import UIKit

class MenuView: UIView {
    
    var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "life")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .viewColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var nameUsersLabel: UILabel = {
        
        let label = LabelView(text: "Luis Kalil", textColor: .textColor, font: UIFont(name: "Agenda", size: 24), nLines: .zero)
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.accessibilityLabel = label.text
        return label
    }()
    
    init() {
        super.init(frame: .zero)
        setupHeaderView()
        setupLogoImage()
        setupNameUsersLabel()
        
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupHeaderView() {
        addSubview(headerView)
        
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            headerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            headerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            headerView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25),

        ])
    }
    
    private func setupLogoImage() {
        headerView.addSubview(logoImage)
        
        let kheight: CGFloat = 50
        let kwidth: CGFloat = 50
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 60),
            logoImage.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -10),
            logoImage.heightAnchor.constraint(equalToConstant: kheight),
            logoImage.widthAnchor.constraint(equalToConstant: kwidth)
        ])
    }
    private func setupNameUsersLabel() {
        headerView.addSubview(nameUsersLabel)
        
        NSLayoutConstraint.activate([
            nameUsersLabel.rightAnchor.constraint(equalTo: headerView.rightAnchor, constant: -20),
            nameUsersLabel.leftAnchor.constraint(equalTo: headerView.leftAnchor, constant: 22),
            nameUsersLabel.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10)
        ])
    }
}
