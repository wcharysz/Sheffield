//
//  MapViewModel.swift
//  Sheffield
//
//  Created by User  on 29.07.2017.
//  Copyright © 2017 Wojciech Charysz. All rights reserved.
//

import Foundation
import CoreLocation

class MapViewModel: NSObject, ViewModelProtocol, CLLocationManagerDelegate {
    
    weak var delegate: MapViewController?
    
    lazy var locatioManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.delegate = self
        
        return manager
    }()

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
    }
}
