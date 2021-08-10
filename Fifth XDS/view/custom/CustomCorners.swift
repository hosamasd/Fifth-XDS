//
//  CustomCorners.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI
struct CustomCorners: Shape {
 
    var corners:UIRectCorner
    var width:CGFloat = 35
    
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: width, height: width))
        
        return Path(path.cgPath)
    }
    
}
