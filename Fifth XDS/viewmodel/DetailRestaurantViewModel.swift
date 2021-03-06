//
//  DetailRestaurantViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

class DetailRestaurantViewModel: ObservableObject {
   
    @Published var isLoading = false
    @Published var showDetail = false

    
    @Published var restArray:[ResatrantModel] = [
    
//        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
//        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
//        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
//        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
//        ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),

    ]
//    init() {
//      
//        getDatas()
//    }
    
    func getDatas()  {
        withAnimation{self.isLoading.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            
            withAnimation{self.isLoading.toggle()}
            
            DispatchQueue.main.async {
                
                self.restArray = [
                    ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
                    ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
                    ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
                    ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
                    ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong\n"),
                
                ]
                
                
            }
            
        }
        
    }
}
