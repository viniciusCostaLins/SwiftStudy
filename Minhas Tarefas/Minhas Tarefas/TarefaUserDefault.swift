//
//  TarefaUserDefault.swift
//  Minhas Tarefas
//
//  Created by Vinícius Costa on 19/03/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//


import UIKit

class TarefaUserDefault {
    
    let chaveListaTarefa = "chaveListaTarefa"
    var tarefas : [String] = []
    
    func adicionarTarefa(tarefa : String){
        
        tarefas = listarTarefas()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: chaveListaTarefa)
        
    }

    func listarTarefas() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: chaveListaTarefa)
        
        if dados != nil {
            return dados as! Array
        } else {
            return []
        }
    }
    
    func removerTarefa(index : Int){
        tarefas = listarTarefas()
        tarefas.remove(at: index)
        UserDefaults.standard.set(tarefas, forKey: chaveListaTarefa)
    }
}

