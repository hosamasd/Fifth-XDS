//
//  HomeForget.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeForget: View {
    @ObservedObject var vm : HomeWelcomeViewModel
    @Environment(\.presentationMode) var presentationMode
    //    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            VStack {
                
//                HStack {
//                    Button(action: {withAnimation{
//                        vm.showForget.toggle()
//                        //                    presentationMode.wrappedValue.dismiss()
//                    }}, label: {
//                        Image("aaaa")
//                        
//                    })
//                    Spacer()
//                }
//                .padding(.horizontal)
//                .opacity(vm.isSuccesForget ? 0 : 1)
                
                ZStack {
                    VStack {
                        VStack(alignment:.leading) {
                            Text("Forget Password")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .padding(.bottom,12)
                            
                            Text("Enter your registered email below")
                                .font(.system(size: 16))
                                .foregroundColor(Color.gray.opacity(0.6))
                                .padding(.bottom,40)
                            
                            Text("Email Address")
                                .padding(.leading,2)
                            
                            CustomTF(txt: $vm.emailForget,hint: "Email address")
                                .keyboardType(.emailAddress)
                            
                            Label(
                                title: {
                                    Button(action: {withAnimation{                    presentationMode.wrappedValue.dismiss()
                                    }}, label: {
                                        Text("Sign in")
                                            .font(.system(size: 14))
                                            .foregroundColor(Color("board"))
                                    })
                                    
                                },
                                icon: {
                                    Text("Remember the password?")
                                        
                                        .font(.system(size: 14))
                                        .foregroundColor(Color.gray.opacity(0.6))
                                        .padding(.trailing,-4)
                                }
                            )
                            .padding(.vertical)
                        }
                        .padding(.horizontal,32)
                        .padding(.top,60)
                        .padding(.leading)
                        
                        
                        
                        
                        Spacer()
                        
                        Button(action: {withAnimation{vm.forgetPasswords()}}, label: {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(vm.checkForget() ? Color("board") : Color.gray.opacity(0.2))
                                .overlay(
                                    
                                    Text("Submit")
                                        .font(.system(size: 14))
                                        .fontWeight(.semibold)
                                        .foregroundColor( vm.checkForget() ? Color.white : Color.black.opacity(0.2))
                                    
                                )
                        })
                        .frame( height: 50)
                        
                        .padding(.bottom,40)
                        .padding(.horizontal,64)
                        
                        
                    }
                    .opacity(vm.isSuccesForget ? 0 : 1)
                    
                    
                    if vm.isSuccesForget {
                        SuccesForget(vm: vm)
                            .transition(.move(edge: .trailing))
                        //                    Spacer()
                    }
                }
                
            }
            .opacity(vm.showNewPass ? 0 : 1)
            //            .onReceive(timer) { input in
            //
            //                if vm.isSuccesForget {
            //    //                presentationMode.wrappedValue.dismiss()
            //    //                vm.isSuccesForget.toggle()
            //                }
            //        }
            
            if vm.isLooding {
                UArcView(height:100)

            }
            
            
            if vm.showNewPass {
                HomeChangePass(vm: vm)
                    .transition(.move(edge: .bottom))
                
            }
            
            
        }
        
        
    }
}

struct HomeForget_Previews: PreviewProvider {
    static var previews: some View {
        HomeForget(vm: HomeWelcomeViewModel())
    }
}
