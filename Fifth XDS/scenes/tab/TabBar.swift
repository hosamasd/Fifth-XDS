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
            HStack{
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=0}}, label: {
                    Image("Frame")
                })
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=0}}, label: {
                    Image(vm.index == 1 ? "Frassme" : "Framse")
                })
                
                Spacer()
                
                Button(action: {withAnimation{vm.index=0}}, label: {
                    Image(vm.index == 2 ? "Framxxxe" : "Framsse")
                })
                
                Spacer()
             
                    
                
            }
            .padding(.horizontal,32)
            

        }
    //        .padding()

            .frame(width: getFrameSize().width, height: 70)
        .border(Color.gray.opacity(0.6), width: 2)

            .background(Color.white)
        
        .clipShape(CustomCorners(corners: [.topLeft,.topRight], width: 20))


    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
