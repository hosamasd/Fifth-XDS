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
    
    @Published var isSuccessNewPass = false

    
    @Published var isValidRegister = false
    @Published var isValidLogin = false
    @Published var isValidForget = false
    @Published var isValidChangePass = false

    
    @Published var emailReg = ""
    @Published var nameReg = ""
    @Published var passwordReg = ""
    
    @Published var emailLogin = ""
    @Published var passwordLogin = ""
    
    @Published var emailForget = ""

    @Published var passwordReset = ""
    @Published var rePasswordReset = ""


}
