//
//  HomeMainTabBarViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

class HomeMainTabBarViewModel: ObservableObject {
    @Published var isArabicLanguage = false
    @Published var index = 0
    @Published var curvePos : CGFloat = 0
    
    @Published var isHideTabBar = false
    @Published var isLoadingState = false
    @Published var isDisabledTabBar = false

}
