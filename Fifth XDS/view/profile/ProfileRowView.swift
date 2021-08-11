//
//  ProfileRowView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct ProfileRowView: View {
    var x = "Language"
    var w = "Frame 12"
    
    var body: some View {
        HStack {
            
            Image(w)
                .padding(.trailing)
            
            VStack (alignment: .leading) {
                Text(x)
                    .font(.system(size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black.opacity(0.6))
                
                Text("")
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray.opacity(0.6))
            }
            
            Spacer()
            Image(systemName: "chevron.forward")
                
        }
        .padding(.horizontal)
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeProfile()
    }
}
