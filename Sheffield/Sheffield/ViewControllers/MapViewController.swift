//
//  MapViewController.swift
//  Sheffield
//
//  Created by User  on 29.07.2017.
//  Copyright © 2017 Wojciech Charysz. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, ObjectWithViewModel {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var isTrackingEnabled = true
    
    lazy var viewModel: MapViewModel = {
        let model = MapViewModel()
        model.delegate = self
        
        return model
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mapView.userTrackingMode = .followWithHeading
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if CLLocationManager.authorizationStatus() == .notDetermined {
            viewModel.locatioManager.requestAlwaysAuthorization()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        if isTrackingEnabled {
            mapView.setCenter(userLocation.coordinate, animated: true)
        }
    }
}
