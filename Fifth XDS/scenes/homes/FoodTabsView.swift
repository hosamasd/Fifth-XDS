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
        
        VStack {
            
            if !vm.secondFoodArray.isEmpty {
                
                
                
                HStack {
                    TabView(selection: self.$index){
                        
                        ForEach(0...vm.secondFoodArray.count-1,id: \.self){index in
                            
                            FoodRowView(x: vm.secondFoodArray[index],index: $index,q: index)
                                
                                //                            .frame(width:getFrameSize().width-32,height: self.index == index ?  280 : 130)
                                //                               .cornerRadius(30)
                                //                               .padding(.horizontal,32)
                                //                        FoodRowView(x: vm.secondFoodArray[index])
                                //                Image("p\(index)")
                                //                    .resizable()
                                //                    // adding animation...
                                //                    .cornerRadius(15)
                                //                    .padding(.horizontal)
                                //                    // for identifying current index....
                                .tag(index)
                        }
                        
                    }
                    .frame(height:130)
                    
                    .padding(.top,16)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))//        .tabViewStyle(.none)
                    .animation(.easeOut)
                }
                
                
                
                
                HStack(spacing:2) {
                    ForEach(0...self.vm.secondFoodArray.count-1,id: \.self){i in
                        
                        
                        ZStack {
                            
                            
                            Circle()
                                .fill(self.index == i ? Color("board") : Color.gray.opacity(0.2))
                                .frame(height:10)
                            
                        }
                    }
                    .frame(width:15)
                }
                .padding()
                
                
            }
            else {
                Spacer()
            }
            
        }
    }
}

struct FoodTabsView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeScenes()
    }
}
