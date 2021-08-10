//
//  HomeWelcomeViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

class HomeWelcomeViewModel: ObservableObject {
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var smsCode = ""
    
    @Published var isLogin = true
    @Published var showLogin = true

}
