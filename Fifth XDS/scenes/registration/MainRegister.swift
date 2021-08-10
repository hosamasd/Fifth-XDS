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
            
            Spacer()
            
            VStack(spacing:8) {
                
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray.opacity(0.6))
                    .frame(width:48,height:6)
                    .padding(.bottom,24)
                
                HStack {
                    
                    Spacer()
                    
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
                    .padding(.trailing,48)
                    
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
                    
                    Spacer()
                    
                }
                .frame(height:40)
                
                
                Spacer()
                
                
                
                
            }
            
            
            .padding(.bottom,10)
            .padding(.bottom,getSafeArea()?.bottom)
            .padding(.top,20)
            .frame(width:getFrameSize().width,height:  UIScreen.main.bounds.height/2+200)
            
            .background(Color.white.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 36)))
            
            //            .padding(.bottom,getSafeArea()?.bottom)
            //            .padding(.top,20)
            //            .background(Color.red.clipShape(CustomCorners(corners: [.topLeft,.topRight],width: 36)))
            //            .offset(y: vm.showLogin ? 0 : UIScreen.main.bounds.height/2-60)
        }
        .frame(width:getFrameSize().width)
        .background(Color.black.opacity(0.6))
        //        .padding(.bottom,10)
        //        .padding(.bottom,getSafeArea()?.bottom)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MainRegister_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
