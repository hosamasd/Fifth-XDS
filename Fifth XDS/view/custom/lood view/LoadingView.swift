//
//  LoadingView.swift
//  Food App
//
//  Created by hosam on 1/27/21.
//

import SwiftUI

struct Indicator: View {
    @State var animateTrimPath = false
       @State var rotaeInfinity = false

       var body: some View {

           ZStack {
              
            Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all)
                .disabled(true)
//            Color.black
//                   .edgesIgnoringSafeArea(.all)
               ZStack {
                   Path { path in
                       path.addLines([
                           .init(x: 2, y: 1),
                           .init(x: 1, y: 0),
                           .init(x: 0, y: 1),
                           .init(x: 1, y: 2),
                           .init(x: 3, y: 0),
                           .init(x: 4, y: 1),
                           .init(x: 3, y: 2),
                           .init(x: 2, y: 1)
                       ])
                   }
                   .trim(from: animateTrimPath ? 1/0.99 : 0, to: animateTrimPath ? 1/0.99 : 1)
                   .scale(50, anchor: .topLeading)
                   .stroke(Color("choose"), lineWidth: 20)
                   .offset(x: 110, y: 350)
                   .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                   .onAppear() {
                       self.animateTrimPath.toggle()
                   }
               }
               .rotationEffect(.degrees(rotaeInfinity ? 0 : -360))
               .scaleEffect(0.3, anchor: .center)
               .animation(Animation.easeInOut(duration: 1.5)
               .repeatForever(autoreverses: false))
               .onAppear(){
                   self.rotaeInfinity.toggle()
               }
           }
           
       }
}

struct LoadingView: View {
    
    @State var animation = false
    
    var body: some View{
        
        VStack{
            
            Circle()
                .trim(from: 0, to: 0.7)
                .stroke(Color("bgi"),lineWidth: 8)
                .frame(width: 75, height: 75)
                .rotationEffect(.init(degrees: animation ? 360 : 0))
                .padding(50)
        }
        .background(Color.white)
        .cornerRadius(20)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all))
        .onAppear(perform: {
            
            withAnimation(Animation.linear){
                
                animation.toggle()
            }
        })
    }
}
