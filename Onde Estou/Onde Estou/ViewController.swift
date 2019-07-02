//
//  ViewController.swift
//  Onde Estou
//
//  Created by Vinícius Costa on 10/04/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var gerenciadorLocalizacao = CLLocationManager()
    
    @IBOutlet weak var mapa: MKMapView!
    @IBOutlet weak var velocidadeLbl: UILabel!
    @IBOutlet weak var latitudeLbl: UILabel!
    @IBOutlet weak var longitudeLbl: UILabel!
    @IBOutlet weak var enderecoLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gerenciadorLocalizacao.delegate = self
        gerenciadorLocalizacao.desiredAccuracy = kCLLocationAccuracyBest
        gerenciadorLocalizacao.requestWhenInUseAuthorization()
        gerenciadorLocalizacao.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let localizacaoUsuario = locations.last!
        
        let latitude = localizacaoUsuario.coordinate.latitude
        let longitude = localizacaoUsuario.coordinate.longitude
        
        longitudeLbl.text = String(longitude)
        latitudeLbl.text = String(latitude)
        velocidadeLbl.text = String( localizacaoUsuario.speed )
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status != .authorizedWhenInUse{
            let alertaController = UIAlertController(title: "Permissão de localização", message: "Necessário Permissão para acesso à sua localização", preferredStyle: .alert)
            
            let acao = UIAlertAction(title: "Abrir configurações", style: .default, handler:
            {(acao) in
                if let configuracoes = NSURL(string: UIApplicationOpenSettingsURLString ){
                    
                    UIApplication.shared.open(configuracoes as URL)
                }
            })
            
            let cancelar = UIAlertAction(title: "Cancelar", style: .default, handler: nil)
            
            alertaController.addAction(acao)
            alertaController.addAction(cancelar)
            present(alertaController, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

