//
//  PagoController.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

import UIKit

class PagoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var pagos : [Pago] = []
    
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
           return pagos.count
       }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPago") as! CeldaPagoController
        celda.lblColegiatura.text = pagos[indexPath.row].colegiatura
        celda.lblReferencia.text = pagos[indexPath.row].referencia
        celda.lblFecha.text = pagos[indexPath.row].fecha
        celda.lblImporte.text = pagos[indexPath.row].importe

        return celda
    }
    
    @IBOutlet weak var tvPagos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pagos.append(Pago(colegiatura: "INSCRIPCIÓN", referencia: "1991861202207", fecha:"22-julio-2022", importe: "10,190.00"))
        
        pagos.append(Pago(colegiatura: "INSCRIPCIÓN", referencia: "1991861202207", fecha:"22-julio-2022", importe: "10,190.00"))
        
        pagos.append(Pago(colegiatura: " 1RA COLEGIATURA", referencia: "1991862202208", fecha:"26-agosto-2022", importe: "$1,559.00"))
        
        pagos.append(Pago(colegiatura: "2DA COLEGIATURA", referencia: "1991861202209", fecha:"15-septiembre-2022", importe: "$1,559.00"))
        
        pagos.append(Pago(colegiatura: "3RA COLEGIATURA", referencia: "1991861202210", fecha:"14-octubre-2022", importe: "$1,559.00"))
        
        pagos.append(Pago(colegiatura: "4TA COLEGIATURA", referencia: "1991861202211", fecha:"11-noviembre-2022", importe: "$1,559.00"))
        
        pagos.append(Pago(colegiatura: "5TA COLEGIATURA", referencia: "1991861202212", fecha:"05-diciembre-2022", importe: "$1,559.00"))
    }
    }
