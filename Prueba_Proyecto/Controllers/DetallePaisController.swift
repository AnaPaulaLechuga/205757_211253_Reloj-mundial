//
//  detalle_pais_controller.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/7/24.
//

import UIKit
import Foundation

//Este modelo sirve para definir las propiedades para describir los países en sus detalles
class DetallePaisController: UIViewController{
    let url_de_paises = "https://maps.googleapis.com/maps/api/timezone/json"
    var lista_de_paises: [Paises] = []
}
