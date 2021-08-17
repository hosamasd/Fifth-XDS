//
//  HomeWelcomeViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

class HomeWelcomeViewModel: ObservableObject {
    
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    @Published var alert = false
    @Published var alertMsg = ""
    @Published var smsCode = ""
    @Published var isLooding = false
    
    @Published var isLogin = true
    @Published var isSuccesForget = false
    @Published var isSuccesNewPasss = false
    
    @Published var showLogin = false
    @Published var showForget = false
    @Published var showNewPass = false
    
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
    
    
    func checkPassword(x:String) -> Bool {
        checkData(p: x)
    }
    
    func checkData(p:String,size:Int = 3) -> Bool {
        p.count >= size
    }
    
    func   checkLogin()->Bool{
        checkPassword(x:passwordLogin) && emailLogin.isValidEmail
    }
    
    func   checkForget()->Bool{
        emailForget.isValidEmail
    }
    
    func checkPasswordAndRe() -> Bool {
        passwordReset==rePasswordReset
    }
    
    func  checkNewPass()->Bool{
        checkPassword(x:passwordReset) && checkPasswordAndRe()
    }
    
    func   checkSignUp()->Bool{
        checkPassword(x:passwordReg) && emailReg.isValidEmail && checkPassword(x:nameReg)
    }
    
    
    
    func makeSignUp()  {
        
        
        
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                
            }
        }
        
    }
    
    func checkUserName() -> Bool {
        checkData(p: nameReg)
    }
    
    func makeLogin()  {
        
//        if !emailLogin.isValidEmail {
//            self.alertMsg = "Please type valid Phone number"
//            self.alert.toggle()
//            return
//        }
//
//        if !checkPassword(x:passwordLogin) {
//            self.alertMsg = "Please type valid Password"
//            self.alert.toggle()
//            return
//        }
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+4) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
                
            }
        }
    }
    
    func makeNewPassword()  {
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isSuccesNewPasss.toggle()
                
            }
        }
    }
    
    func forgetPasswords()  {
        
        
        withAnimation{
            
            self.isLooding.toggle()
        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+2) {
            withAnimation{self.isLooding.toggle()}
            DispatchQueue.main.async {
                self.isSuccesForget.toggle()
                //                self.isForget.toggle()
                
            }
        }
        
    }
    
}
