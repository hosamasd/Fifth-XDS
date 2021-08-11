//
//  FoodTabsView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct FoodTabsView: View {
    @ObservedObject var vm : MainHomeScenesViewModel
    @State var index = 0

    var body: some View {
        
        TabView(selection: self.$index){
            
            ForEach(0...vm.foodArray.count-1,id: \.self){index in
                
                FoodRowView(x: vm.secondFoodArray[index])
//                Image("p\(index)")
//                    .resizable()
//                    // adding animation...
//                    .frame(height: self.index == index ?  230 : 180)
//                    .cornerRadius(15)
//                    .padding(.horizontal)
//                    // for identifying current index....
//                    .tag(index)
            }
        }
        .frame(height:230)
        .padding(.top,25)
        .tabViewStyle(PageTabViewStyle())
        .animation(.easeOut)
    }
}

struct FoodTabsView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeScenes()
    }
}
