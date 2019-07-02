//
//  DetalhesViewController.swift
//  Cara&Coroa
//
//  Created by Vinícius Costa on 13/02/2018.
//  Copyright © 2018 Costa&Lins. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var numeroRecebido : Int!
    
    @IBOutlet weak var moeda: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if numeroRecebido == 0 {
            moeda.image = #imageLiteral(resourceName: "moeda_cara.png")
        }else{
            moeda.image = #imageLiteral(resourceName: "moeda_coroa.png")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
