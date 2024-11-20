//
//  PubHorarios.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/13/24.
//

import UIKit

//Conexión a la api de datos para países
class ApiPais{
    let url = "https://restcountries.com/v3.1/all?fields=name,flags,currencies,capital"
    var lista_paises : [Paises] = []
    
    
    
    func obtener_datos(al_recibir: @escaping ([Paises]) -> Void){
        let ubicacion = URL(string: "\(url)")!
        //Petición HTTP
        URLSession.shared.dataTask(with: ubicacion){
            (datos, respuesta, error) in do{
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretación_de_datos = try JSONDecoder().decode([Paises].self, from: publicaciones_recibidas)
                    
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

//Conexión a la api de datos para los horarios

class ApiTiempo{
    let url = "https://worldtimeapi.org/api/timezone"
    var lista_horarios : [HorariosPais] = []
    
    func obtener_datos(al_recibir: @escaping ([HorariosPais]) -> Void){
        let ubicacion = URL(string: "\(url)")!
        //Petición HTTP
        URLSession.shared.dataTask(with: ubicacion){
            (datos, respuesta, error) in do{
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretación_de_datos = try JSONDecoder().decode([HorariosPais].self, from: publicaciones_recibidas)
                    
                    self.lista_horarios = prueba_de_interpretación_de_datos
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



    /*func obtener_publicaciones(id: Int, al_recibir: @escaping ([HorariosActual]) -> Void){
        let ubicacion = URL(string: "\(url)horarios/\(id)")!
        Petición HTTP
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
            //}}.resume()
        }
}

*/
