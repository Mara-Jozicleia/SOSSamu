//
//  mapViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 03/10/22.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var  onCallButton:(() -> Void)?
    
    let mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    let callButton: UIButton = {
        let button = ButtonView(backgroundColor: .white, titleColor: .viewO, text: "Finalizar chamado", font: UIFont(name:"Agenda", size: 20.0), cRadius: 25, border: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMapConstraints()
        setCallButton()
    }

    func setMapConstraints(){
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: self.view.topAnchor),
            mapView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
    func setCallButton(){
        mapView.addSubview(callButton)
        
        callButton.addTarget(self, action: #selector(TapCallButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callButton.leftAnchor.constraint(equalTo: mapView.leftAnchor, constant: 45),
            callButton.rightAnchor.constraint(equalTo: mapView.rightAnchor, constant: -45),
            callButton.heightAnchor.constraint(equalToConstant: 50),
            callButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -22 )
        ])
    }
    
    @objc func TapCallButton(sender: UIButton) {
        self.onCallButton?()
    }
}
