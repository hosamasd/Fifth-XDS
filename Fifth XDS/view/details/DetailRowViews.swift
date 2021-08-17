//
//  DetailRowViews.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct DetailRowViews: View {
    var x =         ResatrantModel(title: "Ambrosia Hotel ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong")
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
            
            
            
            
            HStack(spacing:16){
                
                Image(x.pic)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
                
                VStack(alignment: .leading, spacing: 4, content: {
                    Text(x.title)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                    
                    HStack {
                        
                        VStack {
                            Spacer()
                            Image("Frssssame")
                        }
                        
                        Text(x.desc)
                            .font(.system(size: 10))
                            .foregroundColor(Color.gray.opacity(0.6))
                            
                            .lineLimit(3)
                            .offset(y:8)
                        
                        Spacer()
                        
                        Image("Rectangle 389")
                            .overlay(
                                
                                Text("Check")
                                    .font(.system(size: 10))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .offset(y:-8)
                            )
                    }
                    .padding(.top,-4)
                    //                        .padding(.vertical)
                })
            }
            .padding()
            
        }
        .cornerRadius(10)
        .modifier(viewModifiers())

    }
}

struct DetailRowViews_Previews: PreviewProvider {
    static var previews: some View {
        DetailRestaurant()
    }
}
