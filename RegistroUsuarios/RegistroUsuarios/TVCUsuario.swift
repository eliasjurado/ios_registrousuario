//
//  TVCUsuario.swift
//  RegistroUsuarios
//
//  Created by DAMII on 10/6/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class TVCUsuario: UITableViewCell {
    @IBOutlet weak var lbCorreo: UILabel!
    @IBOutlet weak var lbNombres: UILabel!
    @IBOutlet weak var lbLogin: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func MostrarUsuario(pUsuario : Usuario_BE){
        self.lbLogin.text = pUsuario.LoginUsuario
        self.lbNombres.text = pUsuario.Nombres
        self.lbCorreo.text = pUsuario.Correo
    }

}
