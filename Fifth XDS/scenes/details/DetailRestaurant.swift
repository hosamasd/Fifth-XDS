//
//  DetailRestaurant.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct DetailRestaurant: View {
    @StateObject var vm = DetailRestaurantViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    
    var body: some View {
        VStack {
            
            DetailRestaurantTopView()
            
            ScrollView(.vertical, showsIndicators: false) {

            
            DetailRestaurantCenterView()
                .padding(.bottom,20)
                
            if vm.restArray.isEmpty {
                Text("No Results Found")
                    .padding(.top,20)
            }
            else {
                
                    
                    
                VStack {
                    
                    VStack(spacing:2) {
                        
                        HStack {
                            Text("List other restaurant")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            Spacer()
                            
                            Text("See All")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(Color("board"))
                                .padding(.trailing,16)
                        }
                        
                        HStack {
                            Text("check the menu at this restaurant")
                                .font(.system(size: 10))
                                .fontWeight(.regular)
                                .foregroundColor(Color.gray.opacity(0.6))
                            Spacer()
                            
                           Image("Vector")
                        }

                    }
//                    .padding(.horizontal)
                    
                    LazyVGrid(columns: columns,spacing: 20){
                            
                            
                            ForEach(vm.restArray){gradient in
                                
                                DetailRowViews(x: gradient)
                            }
                        }
                }//, height: 200)
                .frame(width: getFrameSize().width-32)

                    
                }
            }
            
            Button(action: {withAnimation{
//                vm.isSuccessNewPass.toggle()
            }}, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill( Color("board") )
                    .overlay(
                        
                        Text("Booking")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor( Color.white )
                        
                    )
            })
            .frame( width:getFrameSize().width-128,height: 50)
            .padding(.bottom,20)
            .padding(.top,20)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DetailRestaurant_Previews: PreviewProvider {
    static var previews: some View {
        DetailRestaurant()
    }
}
