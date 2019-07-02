//
//  ViewController.swift
//  Gerador Numeros Aleatorios
//
//  Created by Vinícius Costa on 09/04/17.
//  Copyright © 2017 Costa&LinsVinicius Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var btnGerar: UIButton!
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        var numeroRandom = arc4random_uniform(11)
        lblResultado.text = String(numeroRandom)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

