//
//  SuccessNewPass.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct SuccessNewPass: View {
    var body: some View {
        VStack {
            
            Spacer()
            
            
            Circle()
                .fill(Color("board"))
                .frame(width: 82, height: 82)
                .overlay(
                    
                    Image("aa")
                )
            
            Text("Success")
                .font(.system(size: 26))
                .fontWeight(.bold)
                .padding()
            
            Text("Congratulations your password has\nbeen changed,")
                .font(.system(size: 16))
                .foregroundColor(Color.gray.opacity(0.6))
                .multilineTextAlignment(.center)
            
            Spacer()
        }
    }
}

struct SuccessNewPass_Previews: PreviewProvider {
    static var previews: some View {
        SuccessNewPass()
    }
}
