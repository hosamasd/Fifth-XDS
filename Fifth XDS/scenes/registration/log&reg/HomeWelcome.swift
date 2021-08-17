//
//  HomeWelcome.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeWelcome: View {
    
    @StateObject var vm = HomeWelcomeViewModel()
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                Spacer()
                
                Image("orderSuccess")
                
                Text("Welcome")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black.opacity(0.8))
                    .padding(.vertical)
                
                Text("Before enjoying Foodmedia services")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black.opacity(0.6))
                //                .kerning(20)
                
                Text("Please register first")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .padding(.top,2)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.black.opacity(0.6))
                
                Spacer()
                
                VStack(spacing:24) {
                    Button(action: {withAnimation{
                            vm.isLogin=true

                            vm.showLogin.toggle()}}, label: {
                        
                        RoundedRectangle(cornerRadius: 10)
                            
                            .fill(Color("board"))
                            .frame(height:50)
                            
                            .overlay(
                                
                                Text("Create Account"))
                            .font(.system(size: 14))
                            //                            .fontWeight(.bold)
                            
                            .foregroundColor(Color.white)
                        
                    })
                    
                    
                    Button(action: {withAnimation{
                            vm.isLogin=false
                            vm.showLogin.toggle()}}, label: {
                                
                                RoundedRectangle(cornerRadius: 10)
                                    
                                    .fill(Color("login"))
                                    .frame(height:50)
                                    
                                    .overlay(
                                        
                                        Text("Login "))
                                    .font(.system(size: 14))
                                    
                                    //                        .fontWeight(.bold)
                                    .foregroundColor(Color("board"))
                                
                            })
                    
                    
                    HStack {
                        Text("By logging in or registering, you have agreed to ")
                            
                            +
                            Text(" the Terms And∂ Conditions")
                            .foregroundColor(Color("c"))
                            
                            +
                            Text(" And")
                            +
                            Text(" Privacy Policy.")
                            .foregroundColor(Color("c"))
                    }
                    .font(.system(size: 10))
                    .multilineTextAlignment(.center)
                }
                .padding(.horizontal,64)
                .padding(.bottom,60)
                
            }
//            .onTapGesture{
//                vm.showLogin.toggle()
//            }
            
            if vm.showLogin{
                
                MainRegister(vm:vm)
                    .transition(.move(edge: .bottom))
                
                
            }
            
            if vm.isLooding {
                UArcView(height:100)
//                    .transition(.move(edge: .bottom))
                
            }
        }
    }
}

struct HomeWelcosme_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcome()
    }
}
