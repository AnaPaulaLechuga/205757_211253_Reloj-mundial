//
//  NavigationController.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/8/24.
//

import UIKit

class NavigationController:UINavigationController{
    override func viewDidLoad() {
        activar_barra_navegacion(activar: false, animated: true)
    }
    
    func activar_barra_navegacion(activar: Bool, animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
