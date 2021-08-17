//
//  MainHomeScenes.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct MainHomeScenes: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 1)
    @State var column = Array(repeating: GridItem(.flexible(), spacing: 16), count: 2)
    @EnvironmentObject var vm:MainHomeScenesViewModel
    @State var show = false
    var body: some View {
        ZStack {
            VStack {
                
                
                
                MainHomeScenesTopView(show:$show)
                    .padding(.top,40)
                
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack {
                        
                        
                        VStack {
                            
                            FoodTabsView(vm:vm)
                            
                        }
                        
                        VStack(spacing:4) {
                            
                            HStack {
                                Text("Today New Arivable")
                                    .font(.system(size: 14))
                                    .fontWeight(.semibold)
                                Spacer()
                                
                                Label(
                                    title: {
                                        
                                        Image(systemName: "chevron.forward")
                                            .foregroundColor(Color.gray.opacity(0.6))
                                            .padding(.leading,-22)
                                        
                                    },
                                    icon: {   Text("See All")
                                        .font(.system(size: 12))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.gray.opacity(0.6))
                                        .padding(.trailing,16) }
                                )
                                
                            }
                            
                            HStack {
                                Text("Best of the today  food list update")
                                    .font(.system(size: 10))
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.gray.opacity(0.6))
                                Spacer()
                                
                                
                            }
                            
                        }
                        .padding()
                        
                        
                        if vm.foodArray.isEmpty {
                            Text("No Results Found")
                                .padding(.top,20)
                        }
                        else {
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                
                                
                                
                                HStack (spacing:16) {
                                    
                                    ForEach(vm.foodArray){gradient in
                                        
                                        FoodRowViews(x: gradient)
                                    }
                                    
                                }
                                .padding(.vertical)
                                
                            })
                            .padding()
                            .padding(.top,-32)
                            
                        }
                        
                        if vm.restArray.isEmpty {
                            Text("No Results Found")
                                .padding(.top,20)
                        }
                        else {
                            
                            
                            
                            VStack {
                                
                                VStack(spacing:4) {
                                    
                                    HStack {
                                        Text("Explore Restaurant")
                                            .font(.system(size: 14))
                                            .fontWeight(.semibold)
                                        Spacer()
                                        
                                        Label(
                                            title: {
                                                
                                                Image(systemName: "chevron.forward")
                                                    .foregroundColor(Color.gray.opacity(0.6))
                                                    .padding(.leading,-22)
                                                
                                            },
                                            icon: {   Text("See All")
                                                .font(.system(size: 12))
                                                .fontWeight(.semibold)
                                                .foregroundColor(Color.gray.opacity(0.6))
                                                .padding(.trailing,16) }
                                        )
                                        
                                    }
                                    
                                    HStack {
                                        Text("Check your city Near by Restaurant")
                                            .font(.system(size: 10))
                                            .fontWeight(.regular)
                                            .foregroundColor(Color.gray.opacity(0.6))
                                        Spacer()
                                        
                                    }
                                    
                                }
                                .padding(.vertical)
                                
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
                }
                
                
                
                
            }
            .padding(.top)
            .padding(.bottom,120)
            .opacity(show ?  0 : 1)
            
            if show {
                HomeMapView(show: $show).transition(.move(edge: .bottom))
            }
            
            if vm.isLoading {
                UArcView(height:100)
//                    .transition(.move(edge: .bottom))
                    .opacity(vm.isLoading ? 1 : 0)
                
            }
        }
        .onAppear(perform: {
            if vm.foodArray.isEmpty {
                vm.getDatas()
            }
        })
    }
}

struct MainHomeScenes_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeScenes()
    }
}
