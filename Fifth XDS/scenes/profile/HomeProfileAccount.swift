//
//  HomeProfileAccount.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeProfileAccount: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.white)
            .overlay(
                
                HStack(spacing:16) {
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 10, height: 10)
                    
                    HStack {
                        VStack (alignment: .leading, spacing: 4, content: {
                            Text("Account setting")
                                .font(.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.black.opacity(0.6))
                            
                            Text("")
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                                .foregroundColor(Color.gray.opacity(0.6))
                            
                        })
                        Spacer()
                        
                        Image(systemName: "highlighter")
                        
                    }
                    
                }
                .padding(.horizontal,16)

            )
            .frame(width:getFrameSize().width-48,height:70)
    }
}

struct HomeProfileAccount_Previews: PreviewProvider {
    static var previews: some View {
        HomeProfileAccount()
    }
}
