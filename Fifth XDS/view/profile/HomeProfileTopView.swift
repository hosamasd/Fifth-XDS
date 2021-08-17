//
//  HomeProfileTopView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeProfileTopView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .overlay(
                
                HStack(spacing:16) {
                    
                    Image("pict")
                        .resizable()
                        .frame(width: 45, height: 45)
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 4, content: {
                            Text("Hosam Mohamed")
                                .font(.system(size: 16))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black.opacity(0.6))
                            
                            Text("hosamelmalt@gmail.com")
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray.opacity(0.6))
                            
                        })
                        Spacer()
                        
                        ZStack(alignment:Alignment(horizontal: .trailing, vertical: .top)) {
                            Image(systemName: "bell")
                            
                            Circle()
                                .fill(Color("logs"))
                                
                                .frame(width: 12, height: 12)
                                .offset(x: 6, y: -15)
                            
                        }
                    }
                    
                }
                .padding(.horizontal,16)
                
            )
            .frame(width:getFrameSize().width-48,height:70)
            .modifier(viewModifiers())

    }
}

struct HomeProfileTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeProfileTopView()
    }
}
