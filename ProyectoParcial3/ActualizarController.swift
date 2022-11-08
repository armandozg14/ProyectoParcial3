//
//  ActualizarController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class ActualizarController: UIViewController {
    
    var contacto: Contacto?
    
    var nombre: String?
    var cel: String?
    var cel2: String?
    var correo: String?

    
    var callBackActualizar : (() -> Void)?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCel: UITextField!
    @IBOutlet weak var txtCel2: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if contacto != nil {
            txtNombre.text = contacto!.nombre
            txtCel.text = contacto!.cel
            txtCel2.text = contacto!.cel2
            txtCorreo.text = contacto!.correo
        }
        
    }
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
            contacto?.nombre = txtNombre.text!
            contacto?.cel = txtCel.text!
            contacto?.cel2 = txtCel2.text!
            contacto?.correo = txtCorreo.text!
            
            callBackActualizar!()
            self.navigationController?.popViewController(animated: true)
        }

    }
    
}
