//
//  HomeChangePass.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeChangePass: View {
    @ObservedObject var vm : HomeWelcomeViewModel

    var body: some View {
        VStack {
            
            VStack(alignment:.leading) {
                Text("Change New Password")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.bottom,12)
                
                Text("Enter your registered email below")
                    .font(.system(size: 16))
                    .foregroundColor(Color.gray.opacity(0.6))
                    .padding(.bottom,40)
                
                Text("New Password")
                    .foregroundColor(Color.gray.opacity(0.6))

                    .padding(.leading)
                
                CustomTF(txt: $vm.passwordReset,hint: "",isHide: true)
                
                Text("Confarm Password")
                    .foregroundColor(Color.gray.opacity(0.6))

                    .padding(.leading)

                CustomTF(txt: $vm.rePasswordReset,hint: "",isHide: true)

            }
            .padding(.horizontal,32)
            .padding(.top,60)
            .padding(.leading)

            Spacer()
            
            Button(action: {}, label: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(vm.isValidChangePass ? Color("board") : Color.gray.opacity(0.2))
                    .overlay(
                        
                        Text("Submit")
                            .font(.system(size: 14))
                            .fontWeight(.semibold)
                            .foregroundColor( vm.isValidChangePass ? Color.white : Color.black.opacity(0.2))
                        
                    )
        })
            .frame( height: 50)

            .padding(.bottom,40)
            .padding(.horizontal,64)
            
            
        }    }
}

struct HomeChangePass_Previews: PreviewProvider {
    static var previews: some View {
        HomeChangePass(vm: HomeWelcomeViewModel())
    }
}
