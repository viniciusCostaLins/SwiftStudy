//
//  TarefaViewController.swift
//  Minhas Tarefas
//
//  Created by Vinícius Costa on 19/03/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit

class TarefaViewController: UIViewController {

    
    @IBOutlet weak var tarefaTxt: UITextField!
    
    @IBAction func adicionarTarefa(_ sender: Any) {
        
        if let tarefa = tarefaTxt.text {
            let tarefaUser = TarefaUserDefault()
            tarefaUser.adicionarTarefa(tarefa: tarefa)
            tarefaTxt.text = ""
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
