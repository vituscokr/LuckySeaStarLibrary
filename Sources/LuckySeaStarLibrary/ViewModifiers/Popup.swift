//
//  File.swift
//  
//
//  Created by vitus on 2021/07/16.
//

import SwiftUI

public struct Popup<T:View> : ViewModifier {
    let popup:T
    let isPresented: Bool
    
    public init(isPresented:Bool , @ViewBuilder content:() -> T) {
        self.isPresented = isPresented
        popup = content()
    }
    
    public func body(content: Content) -> some View {
        content
            //.edgesIgnoringSafeArea(.all)
            .overlay(popupContent())
            //.navigationBarHidden(true)
    }
    
    @ViewBuilder private func popupContent() -> some View {
        GeometryReader { geometry in
            if isPresented {
                popup
                    .animation(.spring())
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }
}
