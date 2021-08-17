//
//  BookingHistory.swift
//  Fifth XDS
//
//  Created by hosam on 16/08/2021.
//

import SwiftUI

struct BookingHistory: View {
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    @EnvironmentObject var vm:DetailRestaurantViewModel

    var body: some View {
        ZStack {
            VStack {
                
                BookingHistoryTopView()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    LazyVGrid(columns: columns,spacing: 20){
                        
                        
                        ForEach(vm.restArray){gradient in
                            
//                            NavigationLink(destination:
//                            DetailRestaurant()
//                            ) {
                            
                            DetailRowViews(x: gradient)
                                .onTapGesture(perform: {
                                    withAnimation{
                                        vm.showDetail.toggle()
                                    }
                                })
                                
//                            }
    //                            .padding()
                        }
                    }
                    .padding(.top)
                    
                    
                }
                .padding(.horizontal,32)
    //            .padding(.bottom,60)
                
                Button(action: {withAnimation{
                    //                vm.isSuccessNewPass.toggle()
                }}, label: {
                    RoundedRectangle(cornerRadius: 10)
                        .fill( Color.white )
                        .overlay(
                            
                            Label(
                                title: { Text("Booking more ")
                                    .font(.system(size: 14))
                                    .fontWeight(.semibold)
                                    .foregroundColor( Color.gray.opacity(0.6) ) },
                                icon: { Image( "Frame-2")
                                    .foregroundColor(Color.black)
                                }
                            )
                            
                            
                        )
                })
                .frame( height: 50)
                .padding(.horizontal,64)

                .padding(.bottom,120)
                .offset(y:-40)
    //            .padding(.top,60)
                
                Spacer()
            }
            .opacity(vm.showDetail ? 0 : 1)
            
            if vm.showDetail {
                DetailRestaurant()
                    .environmentObject(vm)
                    .transition(.move(edge: .bottom))
//                HomeMapView(show: $show).transition(.move(edge: .bottom))
            }
            
            if vm.isLoading {
                UArcView(height:100)
//                    .transition(.move(edge: .bottom))
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            if vm.restArray.isEmpty {
                vm.getDatas()
            }
        })

    }
}

struct BookingHistory_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        BookingHistory()
    }
}
