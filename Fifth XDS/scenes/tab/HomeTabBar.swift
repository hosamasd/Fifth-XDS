//
//  HomeTabBar.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeTabBar: View {
    @StateObject var vm = HomeMainTabBarViewModel()
    @StateObject var vmm = DetailRestaurantViewModel()
    @StateObject var vmmm = MainHomeScenesViewModel()

    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {

            if vm.index == 0 {
                MainHomeScenes()
                    .environmentObject(vmmm)
               
            }
            else if vm.index == 1 {
                BookingHistory()
                    .environmentObject(vmm)

            }
            
            else {
                HomeProfile()
                
                //                    SecondMainHome()
            }
            
                
                TabBar(vm: vm)
                
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
