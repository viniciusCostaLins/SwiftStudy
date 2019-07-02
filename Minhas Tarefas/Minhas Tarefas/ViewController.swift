//
//  ViewController.swift
//  Minhas Tarefas
//
//  Created by Vinícius Costa on 13/03/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var tarefas : [String] = []
    let celulaReuso = "celulaReuso"

    override func viewDidLoad() {
        super.viewDidLoad()
        atualizarListaTarefas()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = tarefas[ indexPath.row ]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            let tarefaDefaults = TarefaUserDefault()
            tarefaDefaults.removerTarefa(index: indexPath.row)
            atualizarListaTarefas()
            tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
        tableView.reloadData()
    }
    
    func atualizarListaTarefas(){
        let tarefaDefaults = TarefaUserDefault()
        tarefas = tarefaDefaults.listarTarefas()
    }
}

