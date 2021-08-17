//
//  HomeTabBar.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeTabBar: View {
    @StateObject var vm = HomeMainTabBarViewModel()

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {

            if vm.index == 0 {
                BookingHistory()
               
            }
            else if vm.index == 1 {
                BookingHistory()
            }
            
            else {
                HomeProfile()
                
                //                    SecondMainHome()
            }
            
                
                TabBar(vm: vm)
//                    .environmentObject(vm)
                //                    .disabled(vm.isDisabledTabBar)
                
        })
        .edgesIgnoringSafeArea(.all)
//        .background(Color.red)

    }
}

struct HomeTabBar_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabBar()
    }
}
