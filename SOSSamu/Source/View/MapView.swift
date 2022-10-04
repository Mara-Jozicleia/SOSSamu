//
//  MapView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 03/10/22.
//

import UIKit

class MapView: UIMAPV {
    
    lazy var mapView: UI =  {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    init() {
        super.init(frame: .zero)
        setupMapView()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupMapView() {
        addSubview(mapView)
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: topAnchor),
            mapView.leftAnchor.constraint(equalTo: self.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: self.rightAnchor)
        ])
    }
//    private func setupCRM_CORENTextField() {
//        addSubview(idUserTextField)
//        NSLayoutConstraint.activate([
//            idUserTextField.topAnchor.constraint(equalTo: idUserLabel.bottomAnchor, constant: 10),
//            idUserTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 30),
//            idUserTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -30)
//        ])
//    }
}
