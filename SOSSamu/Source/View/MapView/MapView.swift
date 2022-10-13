//
//  MapView.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 07/10/22.
//

import UIKit
import MapKit

class MapView: UIView {
    
    var  closeMap:(() -> Void)?
    var  onFinishCallButton:(() -> Void)?
    var  onGoButton:(() -> Void)?
    
    
    let mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    
    var pinImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "pin")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    lazy var closeMapButton: UIButton = {

        let button = ButtonView(backgroundColor: .viewO, titleColor: .white, text: "×", font: UIFont(name:"Avenir Next", size: 30), cRadius: 0, border: 0)
        button.layer.cornerRadius = 25
        button.clipsToBounds = true
        return button

    }()
    lazy var routerButton: UIButton = {
        let button = ButtonView(backgroundColor: .white, titleColor: .viewO, text: "Iniciar rota", font: UIFont(name:"Agenda", size: 20.0), cRadius: 25, border: 0)
        button.isHidden = false
        button.layer.borderColor = .borderO
        button.layer.borderWidth = 2
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    let finishCallButton: UIButton = {
        let button = ButtonView(backgroundColor: .viewO, titleColor: .white, text: "Finalizar chamado", font: UIFont(name:"Agenda", size: 20.0), cRadius: 25, border: 0)
        button.isHidden = true
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var addressLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = .textColor
        label.translatesAutoresizingMaskIntoConstraints = false
        label.accessibilityLabel = label.text
        return label
    }()
    
    init(){
        super.init(frame: .zero)
        backgroundColor = .viewColor
        setupAddressLabel()
        setMapConstraints()
        setpinImage()
        setupCloseMapButton()
        setRouterButton()
        setCallButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupAddressLabel() {
        addSubview(addressLabel)
        
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 90),
            addressLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
            addressLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10)
        ])
    }
    
    func setMapConstraints(){
        addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 10),
            mapView.leftAnchor.constraint(equalTo: self.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: self.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    func setpinImage(){
        mapView.addSubview(pinImage)
        let kheight: CGFloat = 40
        let kwidth: CGFloat = 40
        
        
        NSLayoutConstraint.activate([
            pinImage.centerXAnchor.constraint(equalTo: mapView.centerXAnchor,constant: 0),
            pinImage.centerYAnchor.constraint(equalTo: mapView.centerYAnchor, constant: 0),
            pinImage.heightAnchor.constraint(equalToConstant: kheight),
            pinImage.widthAnchor.constraint(equalToConstant: kwidth)
        ])
    }
    private func setupCloseMapButton() {

        addSubview(closeMapButton)

        let kheight: CGFloat = 50
        let kwidth: CGFloat = 50
        closeMapButton.addTarget(self, action: #selector(TapcloseMapButton), for: .touchUpInside)

        NSLayoutConstraint.activate([

            closeMapButton.topAnchor.constraint(equalTo: mapView.topAnchor, constant: -15),
            closeMapButton.rightAnchor.constraint(equalTo: mapView.rightAnchor, constant: -5),
            closeMapButton.heightAnchor.constraint(equalToConstant: kheight),
            closeMapButton.widthAnchor.constraint(equalToConstant: kwidth)

        ])

    }
    
    func setCallButton(){
        mapView.addSubview(finishCallButton)
        
        finishCallButton.addTarget(self, action: #selector(TapCallButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            finishCallButton.leftAnchor.constraint(equalTo: mapView.leftAnchor, constant: 45),
            finishCallButton.rightAnchor.constraint(equalTo: mapView.rightAnchor, constant: -45),
            finishCallButton.heightAnchor.constraint(equalToConstant: 50),
            finishCallButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -22 )
        ])
    }
    func setRouterButton(){
        mapView.addSubview(routerButton)
        
        routerButton.addTarget(self, action: #selector(TapRouterButton), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            routerButton.leftAnchor.constraint(equalTo: mapView.leftAnchor, constant: 45),
            routerButton.rightAnchor.constraint(equalTo: mapView.rightAnchor, constant: -45),
            routerButton.heightAnchor.constraint(equalToConstant: 50),
            routerButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -22 )
        ])
    }
    
    @objc func TapcloseMapButton(sender: UIButton) {
        self.closeMap?()

    }
    
    @objc func TapRouterButton(sender: UIButton) {
        self.onGoButton?()
        routerButton.isHidden = true
        finishCallButton.isHidden = false
    }
    
    @objc func TapCallButton(sender: UIButton) {
        self.onFinishCallButton?()
    }

}
