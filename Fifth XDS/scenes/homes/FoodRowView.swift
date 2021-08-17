//
//  FoodRowView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct FoodRowView: View {
    var x =         FoodModel(title: "Sauce Tonkatsu  ", pic: "Rectangle 387", desc: "We are here with the best\n deserts intown.",picS: "image 2")
    @Binding var index:Int
    var q = 0
    
    var body: some View {
        VStack {
            
            HStack {
                
                VStack (alignment:.leading, spacing:8){
                    Image(x.picS)
                        .padding(.top,-8)
                        .padding(.leading,-12)
                    
                    Text(x.title)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text(x.desc)
                        .font(.system(size: 7))
                        .fontWeight(.medium)
                        .foregroundColor(Color.white.opacity(0.6))
                        .lineLimit(3)
                    //                        .padding(.bottom)
                    
                    
                    Label(
                        title: {
                            Image( systemName: "chevron.forward")
                                .resizable()
                                .frame(width: 3, height: 7)
                                .foregroundColor(.white)
                            
                            
                            
                        },
                        icon: {
                            Text("Order")
                                .font(.system(size: 8))
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                                .offset(y:-4)
                        }
                        
                    )
                    .padding(.bottom,-12)
                    .padding(.top)
                }
                .padding()
                
                Spacer()
                
                Image(x.pic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
            }
            .padding(.horizontal)
            
        }
        .background(
            
            LinearGradient(gradient: Gradient(colors: [Color("led"), Color("tr")]), startPoint: .leading, endPoint: .trailing)
        )
        //        .frame(width:getFrameSize().width-32,height: self.index == index ?  280 : 130)
        
        .frame(height:130)
        ////        .frame(height: index == q ?  280 : 130)
        .cornerRadius(30)
        .padding(.horizontal,32)
        .tag(index)
        
    }
}

struct FoodRowView_Previews: PreviewProvider {
    static var previews: some View {
        MainHomeScenes()
    }
}
