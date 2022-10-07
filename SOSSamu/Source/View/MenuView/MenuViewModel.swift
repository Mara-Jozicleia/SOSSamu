//
//  MenuViewModel.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 06/10/22.
//

import Foundation
import UIKit

class MenuModal{
    var icon: UIImage
    var text: String
    
    init(icon:UIImage, text:String){
    self.icon = icon
    self.text = text
    }
    
    var menuArr = [MenuModal]()
    menuArr.append(MenuModal(icon: UIImage, text: <#T##String#>))
}
