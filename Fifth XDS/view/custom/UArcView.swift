//
//  UArcView.swift
//  Fifth XDS
//
//  Created by hosam on 16/08/2021.
//

import SwiftUI

struct UArcView: View {
    @State var shouldAnimate: Bool = false
    var timer = Timer.publish(every: 0.25, on: .main, in: .default).autoconnect()
    @State var progress: CGFloat = 0
    
    var body: some View {
            ZStack {
                
                Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all)
                    .disabled(true)
                
         
            
            ZStack {
                Arc(sAngle: .degrees(0), eAngle: .degrees(70), clockwise: false)
                    .stroke(Color.yellow, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                Arc(sAngle: .degrees(90), eAngle: .degrees(160), clockwise: false)
                    .stroke(Color.green, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                Arc(sAngle: .degrees(180), eAngle: .degrees(250), clockwise: false)
                    .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                Arc(sAngle: .degrees(270), eAngle: .degrees(340), clockwise: false)
                    .stroke(Color.pink, style: StrokeStyle(lineWidth: 20, lineCap: .round))
            }
            .rotationEffect(self.shouldAnimate ? .degrees(360) : .zero)
            .animation(Animation.linear(duration: 2).repeatForever(autoreverses: false))
            .frame(width: 200, height: 200)
            
            }
            .onAppear {
                self.shouldAnimate = true
            }
        
    }
}

struct UArcView_Previews: PreviewProvider {
    static var previews: some View {
        UArcView()
    }
}
