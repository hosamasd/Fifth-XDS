//
//  MainHomeScenesViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI
import MapKit

struct ParkingItem: Identifiable {
    let id = UUID()
    let name: String
    let address: String
    let photoName: String
    let place: String
    let carLimit: Int
    let location: CLLocationCoordinate2D
    let fee: CGFloat
    var hour: String
}

struct DataS {
    static let spots = [
        ParkingItem(name: "California Parking", address: "2351 Mission St, San Francisco", photoName: "1", place: "B1", carLimit: 45, location: CLLocationCoordinate2D(latitude: 37.7985599, longitude: -122.4100056), fee: 5.0, hour: "0.0"),
        ParkingItem(name: "Green St Parking", address: "654 Green St, San Francisco", photoName: "2", place: "A6", carLimit: 15, location: CLLocationCoordinate2D(latitude: 37.7993822, longitude: -122.4077079), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "Bank of America", address: "440 Pine St, San Francisco", photoName: "3", place: "B4", carLimit: 20, location: CLLocationCoordinate2D(latitude: 37.799386, longitude: -122.4092267), fee: 4.0, hour: "0.0"),
        ParkingItem(name: "North Beach Parking", address: "701 Stevenson St, San Francisco", photoName: "4", place: "C2", carLimit: 25, location: CLLocationCoordinate2D(latitude: 37.7983406, longitude: -122.4064634), fee: 3.0, hour: "0.0"),
        ParkingItem(name: "Border Parking", address: "1647 Powell St, San Francisco", photoName: "5", place: "A12", carLimit: 12, location: CLLocationCoordinate2D(latitude: 37.7998639, longitude: -122.4110218), fee: 2.0, hour: "0.0"),
        ParkingItem(name: "Public Parking", address: "455 Castro St, San Francisco", photoName: "6", place: "B9", carLimit: 90, location: CLLocationCoordinate2D(latitude: 37.7978987, longitude: -122.4098621), fee: 1.0, hour: "0.0")
    ]
}

class MainHomeScenesViewModel: ObservableObject {
    
    // Location Manager....
    @State var locationManager = CLLocationManager()
    @Published var isLoading = false
    @Published var restArray:[ResatrantModel] = [
        
        ResatrantModel(title: "Ambrosia Hotel & Restaurant ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Tava Restaurant ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Haatkhola ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        
    ]
    
    @Published var foodArray:[ResatrantModel] = [
        
        ResatrantModel(title: "Chicken Biryani ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Sauce Tonkatsu  ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Chicken Katsu ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Chicken Katsu ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        ResatrantModel(title: "Sauce Tonkatsu  ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
        
    ]
    
    @Published var secondFoodArray:[FoodModel] = [
        
        FoodModel(title: "Flash Offer ", pic: "Pizza 1", desc: "We are here with the best \n deserts intown.",picS: "image 1"),
        FoodModel(title: "Sauce Tonkatsu  ", pic: "Pizza 1", desc: "We are here with the best\ndeserts intown.",picS: "image 2"),
        FoodModel(title: "Flash Offer ", pic: "Pizza 1", desc: "We are here with the best\ndeserts intown."),
//        FoodModel(title: "Chicken Katsu ", pic: "Pizza 1", desc:"We are here with the best\ndeserts intown.",picS: "image 2"),
//        FoodModel(title: "Flash Offer  ", pic: "Pizza 1", desc:"We are here with the best\ndeserts intown."),
        
    ]
    
    
    @Published var region = MKCoordinateRegion()

    init() {
        
        getDatas()
    }
    
    func getDatas()  {
        
    }
}
