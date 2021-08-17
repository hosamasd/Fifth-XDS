//
//  ContentView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFIrstOpen") var isFIrstOpen: Bool = false
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    var body: some View {
        VStack {
            
            if isFIrstOpen {
                
                ZStack {
                    
                    if isUserLogin {
                        HomeTabBar()
                            .transition(.move(edge: .bottom))

                    }
                    
                    HomeWelcome()
                        .opacity(isUserLogin ? 0 : 1)
                    
                }
               
                
            }
            else {
                HomeInfo()
            }
            
        }
        //        HomeForget(vm: HomeWelcomeViewModel())
        
        //        HomeChangePass(vm: HomeWelcomeViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
