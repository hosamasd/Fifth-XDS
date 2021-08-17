//
//  DetailRestaurantTopView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct DetailRestaurantTopView: View {
    @EnvironmentObject var vm:DetailRestaurantViewModel

    var body: some View {
        
        RoundedRectangle(cornerRadius: 24)
            .fill(Color("board"))
            .frame(width: getFrameSize().width,height: 100)
            .overlay(
            
                HStack{
                    
                    Button(action: {withAnimation{vm.showDetail.toggle()}}, label: {
                        Image(systemName: "arrow.backward")
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("Details Restaurant")
                            .foregroundColor(.white)
                        
                        Spacer()
                    })
                    
                }
                .padding(.top,30)
                .padding(.horizontal)
            )
            .offset(y:-20)
        
//            .padding(.top,20)
    }
}

struct DetailRestaurantTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        DetailRestaurant()
    }
}
