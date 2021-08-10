//
//  Fifth_XDSApp.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

@main
struct Fifth_XDSApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)

        }
    }
}
