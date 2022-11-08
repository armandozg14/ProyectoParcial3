//
//  Alumno.swift
//  ProyectoParcial3
//
//  Created by Alumno ULSA on 08/11/22.
//

class Alumno  {
    var nombre: String
    var matricula: String
    var carrera: String
    var cel: String
    var correo: String
    
    init(nombre: String, cel: String, matricula: String, carrera:String, correo: String) {
        self.nombre = nombre
        self.matricula = matricula
        self.carrera = carrera
        self.cel = cel
        self.correo = correo
    }
    
}
