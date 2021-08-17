//
//  HomeProfile.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeProfile: View {
    @StateObject var vm = HomeProfileViewModel()
    
    var body: some View {
        ZStack {
            VStack {
                
                HomeProfileTopView()
                    .padding(.top,80)
                
                
                VStack(spacing:16) {
                    HomeProfileAccount()
                        .padding(.bottom,20)
                    
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white)
                        .overlay(
                            
                            VStack {
                                
                                ProfileRowView()
                                
                                ProfileRowView(x: "Feedback", w: "Frame-1")
                                
                                ProfileRowView(x: "Rate us", w: "Frame 11")
                                
                                ProfileRowView(x: "New Version", w: "Frssame")
                                
                            }
                            .padding(.horizontal,16)
                            
                        )
                        .frame(width:getFrameSize().width-48,height:180)
                        .modifier(viewModifiers())

                }
                .padding(.top,40)
                
                Button(action: {withAnimation{
                    vm.logOut()
                    //                vm.isSuccessNewPass.toggle()
                }}, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill( Color("logs") )
                        .overlay(
                            
                            Text("Logout")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                                .foregroundColor(  Color.white )
                            
                        )
                })
                .frame( width:115,height: 50)
                .padding(.top,40)
                
                //                .frame(height:200)
                Spacer()
            }
            
            if vm.isLoading {
                UArcView(height:100)
                
            }
        }
        .background(Color("logout"))
        
    }
}

struct HomeProfile_Previews: PreviewProvider {
    static var previews: some View {
        HomeProfile()
    }
}
