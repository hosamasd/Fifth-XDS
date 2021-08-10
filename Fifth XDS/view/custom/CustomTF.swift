//
//  CustomTF.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct CustomTF: View {
    @Binding var txt:String
    var hint = "Enter your full name"
    var isHide = false
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray.opacity(0.6))
//            .fill(Color.white)
            .overlay(
            
                ZStack(alignment: .leading) {
                    if txt.isEmpty { Text(LocalizedStringKey(hint))
                        .foregroundColor(.black.opacity(0.6))
                        .fontWeight(.semibold)
                        .font(.system(size: 12))
                    }
                    ZStack {
                        if isHide {
                            SecureField(hint,text:$txt)
                                .foregroundColor(.black.opacity(0.6))
                                .font(.system(size: 12))

                        }
                        else {
                        TextField(hint,text:$txt)
                            .foregroundColor(.black.opacity(0.6))
                            .font(.system(size: 12))

                        }
                    }
                    
                }
                .padding(.leading)
            )
            .frame(height:50)
    }
}

struct CustomTF_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
