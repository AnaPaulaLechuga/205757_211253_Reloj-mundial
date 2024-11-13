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
    
    
    private var horario: Horarios?
    
  //Detalles de horario de ubicacion actual
    @IBOutlet weak var ubicacion_actual: UILabel!
    @IBOutlet weak var imagen_ubicacion_actual: UIImageView!
    @IBOutlet weak var fecha_ubicacion_actual: UILabel!
    @IBOutlet weak var zona_horario_ubicacion: UILabel!
    @IBOutlet weak var diferencia_ubicacion: UILabel!
    @IBOutlet weak var hora_ubicacion_actual: UILabel!
    
    //Detalles de horarios de pais elegido
    @IBOutlet weak var nombre_pais: UILabel!
    @IBOutlet weak var imagen_pais: UIImageView!
    @IBOutlet weak var fecha_pais: UILabel!
    @IBOutlet weak var zona_horario_pais: UILabel!
    @IBOutlet weak var diferencia_pais: UILabel!
    @IBOutlet weak var hora_pais: UILabel!
    
    private var lista_de_horarios: [Horarios] = []
   
    //Para que funcione la navegacion hacia esta pantalla cuando demos clic a una vista
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controlador_de_navegacion = self.navigationController as? NavigationController
        controlador_de_navegacion?.activar_barra_navegacion(activar: true, animated: true)
    }
    
    //Funcion para obtener la informacion de PubHorarios y publicarla
    func vista_informacion(){
        if self.lista_de_horarios == nil{
            PubHorarios.obtener_publicación(al_recibir: {
                [weak self] (horario) in self?.horario = horario
                DispatchQueue.main.async{
                    self?.vista_informacion()
                }})
        }
    }
}
