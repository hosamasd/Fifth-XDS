//
//  HomeWelcome.swift
//  Fifth XDS
//
//  Created by hosam on 10/08/2021.
//

import SwiftUI

struct HomeInfo: View {
    @State  var onBoard = [
        InfoModel(title:"Nearby restaurants",  pic: "Tracking & Maps",desc:"You don't have to go far to find a good restaurant,\nwe have provided all the restaurants that is \nnear you"),
        InfoModel(title: "Select the Favorites Menu", pic: "orderIllustration",desc:"Now eat well, don't leave the house,You can \nchoose your favorite food only with \none click"),

        InfoModel(title: "Good food at a cheap price", pic: "safeFood",desc:"You can eat at expensive restaurants with\n affordable price"),
        
        
        
    ]
    @AppStorage("isFIrstOpen") var isFIrstOpen: Bool = false

    var colors:[Color] = [.red,.blue,.gray]
    @State var offset:CGFloat = 0
    @State var index = 0
    @State  var selection = "WELCOME"
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Image(self.onBoard[self.index].pic)
//                .resizable()
//                .frame(width: UIScreen.main.bounds.width/1.3, height: UIScreen.main.bounds.height / 2)
            
            VStack {
                Text(LocalizedStringKey(self.onBoard[self.index].title))
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color.black.opacity(0.6))
                    .padding(.top)
//                    .padding(.horizontal, 32)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
          
            
            Text(LocalizedStringKey(self.onBoard[self.index].desc))
                .font(.system(size: 12))
                .fontWeight(.regular)
                .foregroundColor(Color.black.opacity(0.6))
//                .padding(.top)
                .multilineTextAlignment(.center)
                .lineLimit(4)
            
            }
            .padding(.horizontal, 62)

            
            Spacer(minLength: 0)

            
            HStack(){
                
                Button(action: {
                    withAnimation(.easeInOut){
                       isFIrstOpen = true
                    }
                }, label: {
                    
                    Text("Skip")
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                })
                
                Spacer()
                
                ForEach(0..<self.onBoard.count,id: \.self){i in
                    
                    
                    ZStack {
                        
                        
                        Circle()
                            .fill(self.index == i ? Color("board") : Color.gray.opacity(0.2))
                            .frame(height:10)
                        
                    }
                }
                .frame(width:15)
                
                Spacer()
                
                
                
                Button(action: {
                    withAnimation(.easeInOut){
                        
                        if index < onBoard.count-1 {
                            self.index = index+1
                        }
                        else {
                            isFIrstOpen = true

                        }
                    }
                }, label: {
                    
                    
                    Image(systemName: "arrow.forward")
                        .foregroundColor(Color("board"))
                    
                    
                })
                .padding()
                
            }
            .padding(.horizontal,32)
            .padding(.bottom,getSafeArea()?.bottom == 0 ? 15 : 15)
            .padding(.top,30)
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct HomeWelcome_Previews: PreviewProvider {
    static var previews: some View {
        HomeInfo()
    }
}
