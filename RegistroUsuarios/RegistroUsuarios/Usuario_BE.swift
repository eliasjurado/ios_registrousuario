//
//  Usuario_BE.swift
//  RegistroUsuarios
//
//  Created by DAMII on 10/6/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class Usuario_BE: NSObject {
    
    var CodigoUsuario: integer_t = 0
    var LoginUsuario: String?
    var Nombres: String?
    var Correo: String?
    var ContrasenaUsuario: String?
    var Eliminado: Bool
    var CodigoError: integer_t?
    var DescripcionError: String?
    var MensajeError: String?
    
    override init() {
        self.CodigoUsuario = 0
        self.LoginUsuario = ""
        self.Nombres = ""
        self.Correo = ""
        self.ContrasenaUsuario = ""
        self.Eliminado = false
        self.CodigoError = 0
        self.DescripcionError = ""
        self.MensajeError = ""
    }
}
