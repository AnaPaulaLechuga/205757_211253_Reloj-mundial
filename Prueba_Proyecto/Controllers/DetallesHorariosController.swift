//
//  DetallesHorarios.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/7/24.
//

import UIKit
 
class DetallesHorariosController:UIViewController, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    private var horario: HorariosActual?
    
  //Detalles de horario de ubicacion actual
    @IBOutlet weak var ubicacion_actual: UILabel!
    @IBOutlet weak var imagen_ubicacion_actual: UIImageView!
    @IBOutlet weak var fecha_ubicacion_actual: UILabel!
    @IBOutlet weak var zona_horario_ubicacion: UILabel!
    @IBOutlet weak var hora_ubicacion_actual: UILabel!
    
    //Detalles de horarios de pais elegido
    @IBOutlet weak var nombre_pais: UILabel!
    @IBOutlet weak var imagen_pais: UIImageView!
    @IBOutlet weak var fecha_pais: UILabel!
    @IBOutlet weak var zona_horario_pais: UILabel!
    @IBOutlet weak var diferencia_pais: UILabel!
    @IBOutlet weak var hora_pais: UILabel!
    
    public var id_horario: Int?
    
    private var lista_de_horarios: [HorariosActual] = []
   
    //Para que funcione la navegacion hacia esta pantalla cuando demos clic a una vista
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controlador_de_navegacion = self.navigationController as? NavigationController
        controlador_de_navegacion?.activar_barra_navegacion(activar: true, animated: true)
        
        vista_informacion()
    }
    
    //Funcion para obtener la informacion de PubHorarios y publicarla
    func vista_informacion(){
        if self.lista_de_horarios == nil{
            PubHorarios.obtener_publicación(id: self.id_horario ?? -1, al_recibir: {
                [weak self] (horarios) in self?.horario = horarios
                DispatchQueue.main.async{
                    self?.vista_informacion()
                }})
        }
    }
    
    //Llevar a cabo la publicación de las propiedades de horario de la ubicación actual
    func dibujar_horario_actual(){
        guard let horario_actual = self.horario else{
            return
        }
        ubicacion_actual.text = horario_actual.actual_name
        //imagen_ubicacion_actual. = horario_actual.actual_flag
        fecha_ubicacion_actual.text = horario_actual.actual_date
        zona_horario_pais.text = horario_actual.actual_hour_zone
        hora_ubicacion_actual.text = horario_actual.actual_hour
        
    }
    
    //Llevar a cabo la publiación de las propiedades de horario del país elegido
    /*func dibujar_horario_pais(){
         guard let horario_pais = self.horario else{ //Corregir esta parte
             return
         }
         nombre_pais.text = horario_pais.country_name
         //imagen_ubicacion_actual. = horario_actual.country_flag
         fecha_ubicacion_actual.text = horario_pais.country_date
         zona_horario_pais.text = horario_pais.country_hour_zone
            diferencia_pais.text = horario_pais.c_difference
         hora_ubicacion_pais.text = horario_pais.actual_hour
        
        var country_name: String
        var country_date: String
        var country_flag: String
        var country_hour_zone: String
        var c_difference: String
        var actual_hour: String
     }/*

}
