//
//  MenuViewController.swift
//  SOSSamu
//
//  Created by Usuário Convidado on 05/10/22.
//

import UIKit

class MenuViewController: UIViewController {

    var menuView = MenuView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = menuView
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
