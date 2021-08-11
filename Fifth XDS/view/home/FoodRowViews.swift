//
//  FoodRowViews.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct FoodRowViews: View {
    var x =         ResatrantModel(title: "Chicken Biryani ", pic: "Rectangle 387", desc: "kazi Deiry, Taiger Pass\nChittagong")
    
    var body: some View {
        VStack{
            
            Image(x.pic)
                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .padding(.horizontal)
                .frame( height: 105)
            
            VStack(alignment:.leading,spacing:-2) {
                
                Text(x.title)
                    .font(.system(size: 16))
                    .fontWeight(.bold)
                
                Label(
                    title: {
                        
                        Text(x.desc)
                            .font(.system(size: 10))
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray.opacity(0.6))
                        
                    },
                    icon: { Image( "Frssssame")
                        .offset(y:12)
                    }
                )
            }
            .padding(.top,0)
        }
        .padding(8)
        .cornerRadius(10)

        .modifier(viewModifiers())

        .frame(width: getFrameSize().width/2 - 48)
//        .padding()
//        .background(Color.red)

    }
}

struct FoodRowViews_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
