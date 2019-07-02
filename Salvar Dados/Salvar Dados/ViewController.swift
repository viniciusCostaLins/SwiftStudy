//
//  ViewController.swift
//  Salvar Dados
//
//  Created by Vinícius Costa on 05/03/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSUserDefaults versão 2 do Swift
        //UserDefaults.standard.set("azul", forKey: "corFundo")
        
        //let texto = UserDefaults.standard.object(forKey: "corFundo")
        //print(texto)
        
        //var array : [String] = ["Lazanha", "Torta", "Pizza"]
        //UserDefaults.standard.set(array, forKey: "comidas")
        
        UserDefaults.standard.removeObject(forKey: "comidas")
        
        let arrayRecuperado = UserDefaults.standard.object(forKey: "comidas")
        print(arrayRecuperado)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

