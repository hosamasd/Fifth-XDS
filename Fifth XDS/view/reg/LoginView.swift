//
//  LoginView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var vm : HomeWelcomeViewModel
    
    var body: some View {
        VStack() {
            
            VStack(alignment:.leading,spacing:24) {
                
                
                
                Text("Email Address")
                    .padding(.leading)
                
                CustomTF(txt: $vm.emailLogin,hint: "Email address")
                    .keyboardType(.emailAddress)
                
                
                Text("Password")
                    .padding(.leading)
                
                CustomTF(txt: $vm.passwordLogin,hint: "Password",isHide: true)
                
                HStack {
                    Spacer()
                    
                    Button(action: {}, label: {
                        Text("Forget Password?")
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor( Color("board"))
                    })
                    .padding(.trailing,8)
                }
                .padding(.top,-24)
                
                
            }
            .padding(.horizontal,32)
            .padding(.vertical,24)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(vm.isValidLogin ? Color("board") : Color.gray.opacity(0.2))
                    .overlay(
                        
                        Text("Login")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor( vm.isValidLogin ? Color.white : Color.black.opacity(0.2))
                        
                    )
                
            })
            .padding(.horizontal,64)
            .frame( height: 50)
            .padding(.bottom,16)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.2))
                    .overlay(
                        
                        Label(
                            title: {
                                
                                Text("Login with Google")
                                    .font(.system(size: 14))
                                    .fontWeight(.semibold)
                                    .foregroundColor(  Color.black.opacity(0.8))
                                    .padding(.leading)
                                
                            },
                            icon: { Image("icGoogle") }
                        )
                        
                        
                    )
                
            })
            .padding(.horizontal,64)
            .frame( height: 50)
            .padding(.bottom)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcome()
    }
}
