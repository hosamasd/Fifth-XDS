//
//  LoadingCircleOpacity.swift
//  SwiftUI-Loading-Animation
//
//  Created by Adam on 5/20/21.
//

import SwiftUI

struct LoadingCircleOpacity: View {
    
    @State private var loadingAnimation = 0

    var body: some View {
        
        ZStack{
            
            Color.black.opacity(0.4).ignoresSafeArea(.all, edges: .all)
            
            //MARK: - First Animation
            ZStack{
                
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.15))
                    .offset(x: loadingAnimation == 360 ? 55 : 0)
                    .rotationEffect(.degrees(-45))
                
                Circle()
                    .frame(width: 13, height: 13, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.2))
                    .offset(x: loadingAnimation == 360 ? 55 : 0)
           
                Circle()
                    .frame(width: 16, height: 16, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.3))
                    .offset(x: loadingAnimation == 360 ? 55 : 0)
                    .rotationEffect(.degrees(45))
                
                Circle()
                    .frame(width: 19, height: 19, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.4))
                    .offset(y: loadingAnimation == 360 ? 55 : 0)
                       
                Circle()
                    .frame(width: 21, height: 21, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.5))
                    .offset(y: loadingAnimation == 360 ? 55 : 0)
                    .rotationEffect(.degrees(45))
                
                Circle()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.6))
                    .offset(x: loadingAnimation == 360 ? -55 : 0)
                
                Circle()
                    .frame(width: 27, height: 27, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.8))
                    .offset(y: loadingAnimation == 360 ? -55 : 0)
                    .rotationEffect(.degrees(-45))
                
                Circle()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                    .offset(y: loadingAnimation == 360 ? -55 : 0)
 
            }//End of ZStack
            .opacity( loadingAnimation == 360 ? 0 : 1)
            .animation(Animation.linear(duration: 1.0).repeatCount(1).delay(1.6))

//            .animation(.linear(duration: 1.8).repeatCount(1).delay(1.6))
         
            //MARK: - Second Animation
            ZStack{
                
                Circle()
                    .frame(width: 10, height: 10, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.15))
                    .offset(x: 55)
                    .rotationEffect(.degrees(-45))
                
                Circle()
                    .frame(width: 13, height: 13, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.2))
                    .offset(x: 55)
           
                Circle()
                    .frame(width: 16, height: 16, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.3))
                    .offset(x: 55)
                    .rotationEffect(.degrees(45))
                
                Circle()
                    .frame(width: 19, height: 19, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.4))
                    .offset(y: 55)
       
                Circle()
                    .frame(width: 21, height: 21, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.5))
                    .offset(y: 55)
                    .rotationEffect(.degrees(45))
                
                Circle()
                    .frame(width: 24, height: 24, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.6))
                    .offset(x: -55)
                
                Circle()
                    .frame(width: 27, height: 27, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)).opacity(0.8))
                    .offset(y: -55)
                    .rotationEffect(.degrees(-45))
                
                Circle()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 0.9607843137, blue: 0.6705882353, alpha: 1)))
                    .offset(y: -55)
                
            }//End of ZStack
            .rotationEffect(.degrees(Double(loadingAnimation)))
//            .animation(.linear(duration: 1.8))
//            .animation(Animation.default.repeat(while: true))
            .animation(Animation.linear(duration: 1.8).repeatForever(autoreverses: false).delay(3))
//            .animation(.linear(duration: 1.8).repeatForever(autoreverses: false).delay(3))
            
        }//End of ZStack
        .onAppear(){
            loadingAnimation = 360
        }
    }
    
//    func repeatForever(autoreverses: Bool = true) -> Animation
}

extension Animation {
    func `repeat`(while expression: Bool, autoreverses: Bool = true) -> Animation {
        if expression {
            return self.repeatForever(autoreverses: autoreverses)
        } else {
            return self
        }
    }
}


struct LoadingCircleOpacity_Previews: PreviewProvider {
    static var previews: some View {
        LoadingCircleOpacity()
            .preferredColorScheme(.dark)
    }
}
