//
//  ViewController.swift
//  Minhas Anotacoes
//
//  Created by Vinícius Costa on 05/03/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textoTv: UITextView!
    @IBOutlet weak var salvarBtn: UIButton!
    let minhaAnotacaoKey = "minhaAnotacao"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let textoRecuperado = self.recuperarDadosAnotacao()
        textoTv.text = textoRecuperado
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func salvarAnotacao(_ sender: Any) {
        
        if let texto = textoTv.text {
            self.salvarDadosAnotacao(texto: texto)
            esconderTeclado()
        }
        
    }
    
    func recuperarDadosAnotacao() -> String {
        let texto = UserDefaults.standard.object(forKey:
            minhaAnotacaoKey)
        
        if texto != nil {
            return texto as! String
        } else {
            return ""
        }
    }
    
    func salvarDadosAnotacao( texto: String ) {
        
        UserDefaults.standard.set( texto, forKey: minhaAnotacaoKey)
    }
    
    func esconderTeclado() {
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.esconderTeclado()
    }
    
}

