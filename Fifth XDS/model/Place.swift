//
//  Place.swift
//  Fifth XDS
//
//  Created by hosam on 16/08/2021.
//

import SwiftUI


import MapKit

struct Place: Identifiable {
    
    var id = UUID().uuidString
    var placemark: CLPlacemark
}
