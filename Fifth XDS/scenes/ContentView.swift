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
//        VStack {
//
//            if isFIrstOpen {
        HomeChangePass(vm: HomeWelcomeViewModel())
//            }
//            else {
//                HomeInfo()
//            }
//
//        }
//        HomeForget(vm: HomeWelcomeViewModel())

//        HomeChangePass(vm: HomeWelcomeViewModel())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
