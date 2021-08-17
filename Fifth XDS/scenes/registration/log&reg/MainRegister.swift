//
//  MainRegister.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct MainRegister: View {
    @ObservedObject var vm:HomeWelcomeViewModel
    
    var body: some View {
        VStack {
            
            VStack {
                
                Spacer()
                
            }
            .background(Color.red)
            
            
            VStack(spacing:8) {
                
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.6))
                    .frame(width:48,height:6)
                    .padding(.bottom,24)
                
                HStack {
                    
                    
                    Button(action: {withAnimation{vm.isLogin.toggle()}}, label: {
                        VStack {
                            
                            Text("Create Account")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(!vm.isLogin ? Color.gray.opacity(0.6 ) : Color("c"))
                            
                            Divider()
                                
                                .background(vm.isLogin ?  Color("board") : Color.clear)
                                .frame(width: 80, height: 3)
                                .opacity(vm.isLogin ? 1 : 0)
                        }
                    })
                    
                    Spacer()
                    
                    Button(action: {withAnimation{vm.isLogin.toggle()}}, label: {
                        VStack {
                            
                            Text("Login")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(vm.isLogin ? Color.gray.opacity(0.6 ) : Color("c"))
                            
                            Divider()
                                
                                .background(!vm.isLogin ?  Color("board") : Color.clear)
                                .frame(width: 80, height: 3)
                                .opacity(!vm.isLogin ? 1 : 0)
                            
                        }
                        
                    })
                    
                    
                }
                .frame(height:40)
                .padding(.horizontal,64)
                
                ZStack {
                    RegisterView(vm:vm)
                        .transition(.move(edge: .leading))
                        .opacity(vm.isLogin ? 1 : 0)
                    
                    if !vm.isLogin {
                        LoginView(vm: vm)
                            .transition(.move(edge: .trailing))
                    }
                }
                
                Spacer()
                
                
                
                
            }
            
            
            //            .padding(.bottom,10)
            .padding(.bottom,getSafeArea()?.bottom)
            .padding(.top,20)
            .frame(width:getFrameSize().width,height:  UIScreen.main.bounds.height/2+200)
            
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 36)))
            .onTapGesture(perform: {
                withAnimation{vm.showLogin=true}
            })
        }
        .frame(width:getFrameSize().width)
        .background(Color.black.opacity(0.6))
        //        .padding(.bottom,10)
        //        .padding(.bottom,getSafeArea()?.bottom)
        .onTapGesture(perform: {
            withAnimation{vm.showLogin=false}
        })
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MainRegister_Previews: PreviewProvider {
    static var previews: some View {
        HomeWelcome()
    }
}
