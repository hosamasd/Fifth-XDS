//
//  TabBar.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct TabBar: View {
    @ObservedObject var vm : HomeMainTabBarViewModel

    var body: some View {
        HStack {
            HStack(spacing:32){
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=0}}, label: {
                    Image(vm.index == 0 ? "Frame" : "Frame-3")
                })
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=1}}, label: {
                    Image(vm.index == 1 ? "Frassme" : "Framse")
                })
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=2}}, label: {
                    Image(vm.index == 2 ? "Framxxxe" : "Framsse")
                })
                
                Spacer()
             
                    
                
            }
            .padding(.horizontal,32)
            .padding(.top,-20)


        }
    //        .padding()

            .frame(width: getFrameSize().width, height: 90)
//        .padding(.bottom,isFaoundBottomSafe()! - 16)
            .background(Color.white)
        
        .clipShape(CustomCorners(corners: [.topLeft,.topRight], width: 20))
        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 5, y: 5)
        .shadow(color: Color.gray.opacity(0.6), radius: 5, x: 5, y: -5)

    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
