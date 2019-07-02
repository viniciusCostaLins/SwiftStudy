//
//  DetalhesViewController.swift
//  Passando dados entre views
//
//  Created by Vinícius Costa on 13/02/2018.
//  Copyright © 2018 Costa&Lins. All rights reserved.
//

import UIKit

class DetalhesViewController : UIViewController {

    
    @IBOutlet weak var resultado: UILabel!
    var texto : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultado.text = texto
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
