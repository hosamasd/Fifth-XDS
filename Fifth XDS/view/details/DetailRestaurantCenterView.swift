//
//  DetailRestaurantCenterView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct DetailRestaurantCenterView: View {
    var tt = ""
    var des = ""
    
    
    var body: some View {
        VStack(alignment:.leading) {
            Text("Tava Restaurant")
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .frame(maxWidth:.infinity,alignment: .leading)
//                .padding(.horizontal,16)

            Label(
                title: {
                    
                    Text("kazi Deiry, Taiger Pass,Chittagong")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray.opacity(0.6))
                    
                },
                icon: { Image( "Frssssame") }
            )
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.bottom,24)
//            .padding(.horizontal,16)

            Image("Rectangle 387")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.vertical,24)

                .frame(height:190)
//                .frame(width: getFrameSize().width-24, height: 190)
                .cornerRadius(10)
                .padding(.bottom)

            
            Label(
                title: {
                    
                    Text("Open today")
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray.opacity(0.6))
                    
                },
                icon: { Image( "Framsse-1") }
            )
            .frame(maxWidth:.infinity,alignment: .leading)
            .padding(.horizontal,16)
            .padding(.top)

            HStack {
                
                Text("10:00 AM - 12:00 PM")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                
                Spacer()
                
                Label(
                    title: {
                        
                        Text("Visit the Restaurant")
                            .font(.system(size: 12))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("v"))//.opacity(0.6))
                        
                    },
                    icon: { Image( "directions_black_24dp 1") }
                )
            }
            .padding(.top,-8)
            .padding(.bottom,20)
            .padding(.horizontal,16)

        }
        
        .padding(.vertical)
        .padding(.horizontal,24)
        .background(Color.white)
//        .frame(width: getFrameSize().width-32)//, height: 200)
        
        .cornerRadius(16)
        

    }
}

struct DetailRestaurantCenterView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        DetailRestaurant()
    }
}
