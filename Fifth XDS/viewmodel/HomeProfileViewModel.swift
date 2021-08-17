//
//  HomeProfileViewModel.swift
//  Fifth XDS
//
//  Created by hosam on 17/08/2021.
//

import SwiftUI

class HomeProfileViewModel:ObservableObject {
    
    @Published var isLoading = false
    @AppStorage("isUserLogin") var isUserLogin: Bool = false
    
    func logOut()  {
        
        withAnimation{isLoading.toggle()}
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()+5) {
            withAnimation{self.isLoading.toggle()}
            DispatchQueue.main.async {
                self.isUserLogin.toggle()
            }
            
        }
    }
}
