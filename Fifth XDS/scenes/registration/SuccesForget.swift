//
//  SuccesForget.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct SuccesForget: View {
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
            
            Text("Please check your email for create\na new password")
                .font(.system(size: 16))
                .foregroundColor(Color.gray.opacity(0.6))
                .multilineTextAlignment(.center)
            
            Label(
                title: {
                    Button(action: {}, label: {
                        Text("Resubmit")
                            .font(.system(size: 14))
                            .foregroundColor(Color("board"))
                    })
                    
                },
                icon: {
                    Text("Can't get email?")
                        
                        .font(.system(size: 14))
                        .foregroundColor(Color.black.opacity(0.6))
                        .padding(.trailing,-4)
                }
            )
            .padding(.vertical)
            
            Spacer()
            
            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(  Color("board") )
                    .overlay(
                        
                        Text("Back Email")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor(  Color.white )
                        
                    )
            })
            .frame( height: 50)
            
            .padding(.bottom,40)
            .padding(.horizontal,64)
        }
    }
}

struct SuccesForget_Previews: PreviewProvider {
    static var previews: some View {
        SuccesForget()
    }
}
