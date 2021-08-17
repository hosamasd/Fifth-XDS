//
//  BookingHistoryTopView.swift
//  Fifth XDS
//
//  Created by hosam on 16/08/2021.
//

import SwiftUI

struct BookingHistoryTopView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(Color("board"))
            .frame(width: getFrameSize().width,height: 100)
            .overlay(
            
                HStack{
                    
                  
                        
                        Spacer()
                        
                        Text("Booking History")
                            .foregroundColor(.white)
                            .offset(y:-20)
                        
                        Spacer()
                    
                }
                .padding(.top,30)
                .padding(.horizontal)
            )
//            .offset(y:-20)
    }
}

struct BookingHistoryTopView_Previews: PreviewProvider {
    static var previews: some View {
        BookingHistoryTopView()
    }
}
