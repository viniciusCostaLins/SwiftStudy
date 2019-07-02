//
//  ViewController.swift
//  Alerta
//
//  Created by Vinícius Costa on 14/02/2018.
//  Copyright © 2018 Costa&Lins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func abrirAlerta(_ sender: Any) {
        
        let alertaController = UIAlertController(title: "Adicionar Contato", message: "Deseja adicionar um contato?", preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction(title: "confirmar", style: .default, handler: nil)
        let acaoCancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        
        alertaController.addAction(acaoConfirmar)
        alertaController.addAction(acaoCancelar)
        
        present(alertaController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

