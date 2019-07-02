//: Playground - noun: a place where people can play

import UIKit

class Animal {
 
    var cor : String
    
    init(cor: String) {
        self.cor = cor
    }

    func dormir() -> String{
        
        return "dormir"
    }
}

class Cachorro : Animal {
    func latir() -> String{
        
        return "latir"
    }
    
}

class Passaro : Animal {
    func voar() -> String{
        
        return "voar"
    }
    
    func teste(arg param1: String, param2: String){
        print(param1 + param2)
    }
}

var cao = Cachorro(cor:"Amarelo")
cao.dormir()
cao.latir()

var passaro = Passaro(cor:"verde")
passaro.dormir()
passaro.voar()
passaro.teste(param1: "teste", param2: "oi")



