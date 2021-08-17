//
//  ActivityIndicator.swift
//  PlayIT
//
//  Created by hosam on 5/17/21.
//  Copyright © 2021 Bola Fayez. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
           
         Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all)
             .disabled(true)
        
        GeometryReader { (geometry: GeometryProxy) in
            ForEach(0..<5) { index in
                Group {
                    Circle()
                        .frame(width: geometry.size.width / 5, height: geometry.size.height / 5)
                        .scaleEffect(getScale(index: index))
//                        .scaleEffect(!self.isAnimating ? 1 - CGFloat(index) / 5 : 0.2 + CGFloat(index) / 5)
                        .offset(y: geometry.size.width / 10 - geometry.size.height / 2)
                }
                
                .frame(width: geometry.size.width, height: geometry.size.height)
                .rotationEffect(!self.isAnimating ? .degrees(0) : .degrees(360))
                .animation(Animation
                            .timingCurve(0.5, 0.15 + Double(index) / 5, 0.25, 1, duration: 1.5)
                            .repeatForever(autoreverses: false))
            }
        }
        .aspectRatio(1, contentMode: .fit)
        .frame(width: getFrameSize().width/3, height: getFrameSize().height/3)
        }
        .onAppear {
            self.isAnimating = true
        }
    }
    
    func getScale(index:Int) -> CGFloat {
        !self.isAnimating ? 1 - CGFloat(index) / 5 : 0.2 + CGFloat(index) / 5
    }
}
