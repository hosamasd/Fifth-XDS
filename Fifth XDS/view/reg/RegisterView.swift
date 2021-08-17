//
//  RegisterView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var vm : HomeWelcomeViewModel
    
    var body: some View {
        ScrollView(isSmallDevice() ? .vertical : .vertical,showsIndicators: false) {
            VStack() {
                
                VStack(alignment:.leading,spacing:24) {
                    
                    Text("Full Name")
                        .padding(.leading)
                    
                    
                    CustomTF(txt: $vm.nameReg)
                    
                    Text("Email Address")
                        .padding(.leading)
                    
                    CustomTF(txt: $vm.emailReg,hint: "Email address")
                        .keyboardType(.emailAddress)
                    
                    
                    Text("Password")
                        .padding(.leading)
                    
                    CustomTF(txt: $vm.passwordReg,hint: "Password",isHide: true)
                    
                }
                .padding(.horizontal,32)
                .padding(.vertical,24)
                
                Button(action: {
                    withAnimation{vm.makeSignUp()}
                    
                }, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(vm.checkSignUp() ? Color("board") : Color.gray.opacity(0.2))
                        .overlay(
                            
                            Text("Registration")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor( vm.checkSignUp() ? Color.white : Color.black.opacity(0.2))
                            
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
                                    
                                    Text("Sign up with Google")
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
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
