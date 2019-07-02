//
//  ViewController.swift
//  Pet Age
//
//  Created by Vinícius Costa on 06/11/16.
//  Copyright © 2016 Costa&LinsVinicius Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    
    @IBAction func findAge(_ sender: AnyObject) {
        
        var agePet: Int = Int(txtAge.text!)!
        agePet = agePet * 7
        
        lblResultado.text = "A idade do cachorro é " + String(agePet)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

