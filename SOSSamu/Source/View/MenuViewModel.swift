//
//  MenuViewModel.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 06/10/22.
//

import Foundation
import UIKit

protocol MenuViewModelProtocol {
    var text: [String] { get }
    var imagem: [UIImage] { get }

}

struct MenuViewModel: MenuViewModelProtocol {
    let imageView = UIImageView()
    let labelText: UILabel
    
    var imagem: [UIImage]
    var text: [String]
    init() {
        imagem = [
            imageView.image = UIImage(named: "profile")
        ]
        
        text = [
            labelText.text = "wjwjdn"
        
        ]
    }
    imageView.image = UIImage(named: "life")

    
}
