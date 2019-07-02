//
//  ViewController.swift
//  Trabalhando com mapas
//
//  Created by Vinícius Costa on 07/04/2018.
//  Copyright © 2018 Vinícius Costa Lins. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mapas: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        /*let latitude: CLLocationDegrees = -23.586974
        let longitude: CLLocationDegrees = -46.657355
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        
        mapas.setRegion(regiao, animated: true)
        
        let anotacao = MKPointAnnotation()
        anotacao.coordinate = localizacao
        anotacao.title = "Parque Ibirapuera"
        anotacao.subtitle = "Parques e Diversão"
        mapas.addAnnotation( anotacao )*/
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let localUser: CLLocation = locations.last!
        
        let latitude: CLLocationDegrees = localUser.coordinate.latitude
        let longitude: CLLocationDegrees = localUser.coordinate.longitude
        
        let deltaLatitude: CLLocationDegrees = 0.01
        let deltaLongitude: CLLocationDegrees = 0.01
        
        let localizacao: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let areaVisualizacao: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        
        let regiao: MKCoordinateRegion = MKCoordinateRegionMake(localizacao, areaVisualizacao)
        
        mapas.setRegion(regiao, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

