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
    init() {
      
        getDatas()
    }
    
    func getDatas()  {
        
    }
}
