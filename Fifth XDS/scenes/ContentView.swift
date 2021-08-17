//
//  ContentView.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isFIrstOpen") var isFIrstOpen: Bool = false

    var body: some View {
        VStack {
            
            if isFIrstOpen {
                HomeWelcome()
            }
            else {
                HomeInfo()
            }
            
        }
//        HomeWelcome()
//        HomeChangePass(vm: HomeWelcomeViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
