//
//  MainHomeScenesTopView.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI

struct MainHomeScenesTopView: View {
    @State var txt = ""
    @Binding var show:Bool
    var body: some View {
        VStack {
            HStack{
                
                Image("Group 3119")
                
                Spacer()
                
                
                Button(action: {withAnimation{show.toggle()}}, label: {
                    
//                    NavigationLink(destination:
//                    HomeMapView()
//                    ) {
                    
               
                    Label(
                        title: { Text("Agrabad 435, Chittagong")
                            .offset(y:-15)
                            
                        },
                        icon: { Image( "Frssssame") }
                    )
//                    }
                })
                
                Spacer()
                
                Image("pict")
                    .resizable()
                    .frame(width: 32, height: 32)
                
                
                
            }
            
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("search"))
                //                .padding(.horizontal,24)
                
                .frame(height:40)
                .overlay(
                    
                    
                    Label(
                        title: {
                            
                            TextField("Search", text: $txt)
                                .font(.system(size: 12))
                                .foregroundColor(Color.gray.opacity(0.6))
                            
                        },
                        icon: {                         Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        }
                    )
                    .padding(.leading,32)
                    
                    
                    
                )
                .padding(.top)
                .padding(.horizontal,16)
            
        }
        .padding(.horizontal,24)
        
    }
}

struct MainHomeScenesTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
