//
//  MainHomeScenesViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

class MainHomeScenesViewModel: ObservableObject {
    
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
    
    init() {
        
        getDatas()
    }
    
    func getDatas()  {
        
    }
}
