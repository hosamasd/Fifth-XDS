//
//  HomeForget.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeForget: View {
    @ObservedObject var vm : HomeWelcomeViewModel
    
    var body: some View {
        VStack {
            
            VStack(alignment:.leading) {
                Text("Forget Password")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,12)
                
                Text("Enter your registered email below")
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray.opacity(0.6))
                    .padding(.bottom,40)
                
                Text("Email Address")
                    .padding(.leading)
                
                CustomTF(txt: $vm.emailForget,hint: "Email address")
                    .keyboardType(.emailAddress)
                
                Label(
                    title: {
                        Button(action: {}, label: {
                        Text("Sign in")
                            .font(.system(size: 14))
                            .foregroundColor(Color("board"))
                    })
                        
                    },
                    icon: {
                        Text("Remember the password?")
                            
                            .font(.system(size: 14))
                            .foregroundColor(Color.gray.opacity(0.6))
                            .padding(.trailing,-4)
                    }
                )
                .padding(.vertical)
            }
            .padding(.horizontal,32)
            .padding(.top,60)
            .padding(.leading)

            Spacer()
            
            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(vm.isValidForget ? Color("board") : Color.gray.opacity(0.2))
                    .overlay(
                        
                        Text("Submit")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor( vm.isValidLogin ? Color.white : Color.black.opacity(0.2))
                        
                    )
        })
            .frame( height: 50)

            .padding(.bottom,40)
            .padding(.horizontal,64)
            
            
        }
    }
}

struct HomeForget_Previews: PreviewProvider {
    static var previews: some View {
        HomeForget(vm: HomeWelcomeViewModel())
    }
}
