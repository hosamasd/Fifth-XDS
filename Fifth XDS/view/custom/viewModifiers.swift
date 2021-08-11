//
//  viewModifiers.swift
//  Fifth XDS
//
//  Created by hosam on 11/08/2021.
//

import SwiftUI
struct viewModifiers: ViewModifier {
//    @State var color = Color.black.opacity(0.07)

    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(
                    cornerRadius: 10
                )
                .foregroundColor(Color.white)
                .shadow(
                    color: Color.gray.opacity(0.6),
                    radius: 5,
                    x: 0,
                    y: 2
                )
            )
//            .padding()
//            .background(RoundedRectangle(cornerRadius: 16).stroke(color,lineWidth:1))
//            .shadow(color:Color.black.opacity(0.06) , radius: 5, x: 0, y: 5)//Color.black.opacity(0.06)
//            .shadow(color: Color.black.opacity(0.06), radius: 5, x: -5, y: 5)
    }
}
