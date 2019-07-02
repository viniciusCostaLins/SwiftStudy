//
//  ViewController.swift
//  Passando dados entre views
//
//  Created by Vinícius Costa on 13/02/2018.
//  Copyright © 2018 Costa&Lins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var texto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDadosDetalhes" {
            //print("Passando Dados!!")
            
            let viewControllerDestino = segue.destination as! DetalhesViewController
            viewControllerDestino.texto = texto.text
        }
    }

}

