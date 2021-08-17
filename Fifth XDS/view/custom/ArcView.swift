//
//  ArcView.swift
//  ActivityAnimations
//
//  Created by Karthick Selvaraj on 15/06/20.
//  Copyright © 2020 Mallow Technologies Private Limited. All rights reserved.
//

import SwiftUI


struct Arc: Shape {
    var sAngle: Angle
    var eAngle: Angle
    var clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: sAngle, endAngle: eAngle, clockwise: clockwise)
        return path
    }
}

