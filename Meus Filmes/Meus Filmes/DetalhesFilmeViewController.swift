//
//  DetalhesFilmeViewController.swift
//  Meus Filmes
//
//  Created by Vinícius Costa on 05/03/2018.
//  Copyright © 2018 Costa&Lins. All rights reserved.
//


import UIKit

class DetalhesFilmeViewController : UIViewController {
    
    @IBOutlet weak var filmeImageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDesc: UILabel!
    var filme : Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filmeImageView.image = filme.imagem
        lblTitle.text = filme.titulo
        lblDesc.text = filme.descricao
    }
    
}
