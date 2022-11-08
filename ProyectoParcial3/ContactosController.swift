//
//  ContactosController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class ContactosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var contactos : [Contacto] = []
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
           return 1
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 84
       }
       
       func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return contactos.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as! CeldaContactoController
        celda.lblNombre.text = contactos[indexPath.row].nombre
        celda.lblCel.text = contactos[indexPath.row].cel
        celda.lblCel2.text = contactos[indexPath.row].cel2
        celda.lblCorreo.text = contactos[indexPath.row].correo

        return celda
    }
    
    @IBOutlet weak var tvContactos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contactos.append(Contacto(nombre: "Claudia Gamez Bermudez", cel: "6441172430", cel2:"6449566254", correo: "monnitta@hotmail.com"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         let destino = segue.destination as! ActualizarController
         destino.contacto = contactos[tvContactos.indexPathForSelectedRow!.row]
         destino.callBackActualizar = actualizarContacto

     }
    
    func actualizarContacto(){
        tvContactos.reloadData()
    }
}
