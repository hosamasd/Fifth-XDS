//
//  FoodModel.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct FoodModel: Identifiable {
    var id = UUID().uuidString
    
    var title : String
    var pic : String
    var desc : String
    var picS : String = "image 1"

    
}
