//
//  PubHorarios.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/13/24.
//

import UIKit

class PubHorarios {
    let url = "https://restcountries.com/v3.1/all?fields=name,flags,currencies,capital"
    var lista_paises : [Horarios] = []
    
    
    func obtener_publicación(al_recibir: @escaping ([Horarios]) -> Void){
        let ubicacion = URL(string: "\(url)")!
        //Petición HTTP
        URLSession.shared.dataTask(with: ubicacion){
            (datos, respuesta, error) in do{
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretación_de_datos = try JSONDecoder().decode([Horarios].self, from: publicaciones_recibidas)
                    
                    self.lista_paises = prueba_de_interpretación_de_datos
                    al_recibir(prueba_de_interpretación_de_datos)
                }
                else{
                    print(respuesta!)
                }
            } catch{
                    print("Error")
            }}.resume()
            }
}


