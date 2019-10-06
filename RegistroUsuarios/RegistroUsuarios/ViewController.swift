//
//  ViewController.swift
//  RegistroUsuarios
//
//  Created by DAMII on 10/6/19.
//  Copyright © 2019 JSTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var tfLogin: UITextField!
    @IBOutlet weak var tfNombres: UITextField!
    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfContrasena: UITextField!
    @IBOutlet weak var tbListado: UITableView!
    var oListaUsuarios = [Usuario_BE]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tbListado.dataSource=self
        self.tbListado.delegate=self
        self.tbListado.rowHeight = 150
        var objUsuario = Usuario_BE()
        objUsuario.CodigoUsuario = 1
        objUsuario.Nombres = "Elías Jurado"
        objUsuario.Correo = "eliasljurado@gmail.com"
        objUsuario.LoginUsuario = "eliasljurado"
        oListaUsuarios.append(objUsuario)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return oListaUsuarios.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let oCelda = tableView.dequeueReusableCell(withIdentifier: "celdausuario",for: indexPath) as! TVCUsuario
        let oregUsuario = oListaUsuarios[indexPath.row]
        oCelda.MostrarUsuario(pUsuario: oregUsuario)
        return oCelda
    }
    @IBAction func Agregar_Click(_ sender: Any) {
        let objUsuarioAdd = Usuario_BE()
        objUsuarioAdd.LoginUsuario = self.tfLogin.text
        objUsuarioAdd.Nombres = tfNombres.text
        objUsuarioAdd.Correo = tfCorreo.text
        objUsuarioAdd.ContrasenaUsuario = tfContrasena.text
        oListaUsuarios.append(objUsuarioAdd)
        self.tbListado.reloadData()
        self.LimpiarControles()
    }
    func LimpiarControles(){
        self.tfNombres.text = ""
        self.tfCorreo.text = ""
        self.tfLogin.text = ""
        self.tfContrasena.text = ""
        
    }
    @IBAction func Limpiar_Click(_ sender: Any) {
        LimpiarControles()
    }
}

