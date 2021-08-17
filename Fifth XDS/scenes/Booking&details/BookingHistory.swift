//
//  BookingHistory.swift
//  Fifth XDS
//
//  Created by hosam on 16/08/2021.
//

import SwiftUI

struct BookingHistory: View {
    @StateObject var vm = DetailRestaurantViewModel()
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 0), count: 1)
    
    var body: some View {
        VStack {
            
            BookingHistoryTopView()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                LazyVGrid(columns: columns,spacing: 20){
                    
                    
                    ForEach(vm.restArray){gradient in
                        
                        DetailRowViews(x: gradient)
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
        .edgesIgnoringSafeArea(.all)

    }
}

struct BookingHistory_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        BookingHistory()
    }
}
