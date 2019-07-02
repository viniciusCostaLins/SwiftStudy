//
//  ViewController.swift
//  Frases do dia
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

    @IBOutlet weak var lblFrase: UILabel!
    
    @IBAction func btnNovaFrase(_ sender: Any) {
        
        var frases : [String] = []
        
        frases.append("Se você traçar metas absurdamente altas e falhar, seu fracasso será muito melhor que o sucesso de todos.")
        frases.append("O sucesso normalmente vem para quem está ocupado demais para procurar por ele.")
        frases.append("Se você não está disposto a arriscar, esteja disposo a uma vida comum.")
        
        var indice : Int
        indice = Int (arc4random_uniform(3))
        
        lblFrase.text = frases[indice]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

