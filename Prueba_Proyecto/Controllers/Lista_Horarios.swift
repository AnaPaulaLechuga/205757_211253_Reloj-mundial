//
//  Lista_Horarios.swift
//  Prueba_Proyecto
//
//  Created by alumno on 11/7/24.
//

import UIKit

class HorariosController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var outlet_horario: UICollectionView!
    
    //Esta función es pars permitir que de ls pantalla principal de horarios pase a la de detalles de horario cuando pulsemos la vista.}
    
    /*override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

            print("Se seleccionó el paìs \(indexPath)")

            let pantalla_de_horarios = storyboard?.instantiateViewController(withIdentifier: "PantallaHorarios") as! DetallesHorarios

            pantalla_de_horarios.id_horarios = self.lista_de_horarios[indexPath.item].id

            //self.navigationController?.pushViewController(pantalla_de_publicacion, animated: true)

            self.navigationController?.pushViewController(pantalla_de_horarios, animated: true)

            //print(self.navigationController)

        }*/
     
}
