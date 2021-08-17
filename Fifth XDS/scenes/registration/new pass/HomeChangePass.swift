//
//  HomeChangePass.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeChangePass: View {
    @ObservedObject var vm : HomeWelcomeViewModel
    @Environment(\.presentationMode) var presentationMode
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            VStack {
                
                HStack {
                    Button(action: {withAnimation{
                        presentationMode.wrappedValue.dismiss()
                    }}, label: {
                        Image("aaaa")
                        
                    })
                    Spacer()
                }
                .padding(.horizontal)
                
                ZStack {
                    
                    VStack(alignment:.leading) {
                        Text("Change New Password")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .padding(.bottom,12)
                        
                        Text("Enter your registered email below")
                            .font(.system(size: 16))
                            .foregroundColor(Color.gray.opacity(0.6))
                            .padding(.bottom,40)
                        
                        Text("New Password")
                            .foregroundColor(Color.gray.opacity(0.6))
                            
                            .padding(.leading)
                        
                        CustomTF(txt: $vm.passwordReset,hint: "",isHide: true)
                        
                        Text("Confarm Password")
                            .foregroundColor(Color.gray.opacity(0.6))
                            
                            .padding(.leading)
                        
                        CustomTF(txt: $vm.rePasswordReset,hint: "",isHide: true)
                        
                    }
                    .padding(.horizontal,32)
                    .padding(.top,60)
                    .padding(.leading)
                    .opacity(vm.isSuccessNewPass ? 0 : 1)
                    
                    if vm.isSuccessNewPass {
                        SuccessNewPass()
                            .transition(.move(edge: .trailing))
                        //                    Spacer()
                    }
                }
                
                
                
                Spacer()
                
                Button(action: {withAnimation{
                    vm.isSuccessNewPass.toggle()
                }}, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(vm.isValidChangePass ? Color("board") : Color.gray.opacity(0.2))
                        .overlay(
                            
                            Text("Submit")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor( vm.isValidChangePass ? Color.white : Color.black.opacity(0.2))
                            
                        )
                })
                .frame( height: 50)
                
                .padding(.bottom,40)
                .padding(.horizontal,64)
                
                
                
            }
            
            if vm.isLooding {
                UArcView()
                    .transition(.move(edge: .bottom))
                
            }
            
            
            
        }
        .onReceive(timer) { input in
            
            if vm.isSuccesNewPasss {
                presentationMode.wrappedValue.dismiss()
                vm.isSuccesNewPasss.toggle()
            }
        }
    }
}

struct HomeChangePass_Previews: PreviewProvider {
    static var previews: some View {
        HomeChangePass(vm: HomeWelcomeViewModel())
    }
}
