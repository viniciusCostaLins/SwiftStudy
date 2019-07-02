//
//  ViewController.swift
//  Gasolina ou Alcohol
//
//  Created by Vinícius Costa on 22/08/17.
//  Copyright © 2017 Costa&Lins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alcoolTxtFld: UITextField!
    @IBOutlet weak var gasTxtFld: UITextField!
    @IBOutlet weak var resultadoLbl: UILabel!
    
    @IBAction func calcularCombustivel(_ sender: Any) {
        
        var gas : Double = 0
        var alcool : Double = 0
        var resultado : Double = 0
        
        //Validações
        if let resultadoAlcool = alcoolTxtFld.text {
            
            if resultadoAlcool != "" {
                
                if let resultadoNumero = Double(resultadoAlcool) {
                    alcool = resultadoNumero
                }
            }
        }
        
        if let resultadoGas = gasTxtFld.text {
            
            if resultadoGas != "" {
                
                if let resultadoNumero = Double(resultadoGas) {
                    gas = resultadoNumero
                }
            }
        }
        
        //Calculo
        resultado = alcool / gas
        if resultado >= 0.7 {
            resultadoLbl.text = "Melhor utilizar Gasolina!"
        }else{
            resultadoLbl.text = "Melhor utilizar Álcool!"
        }
        
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

