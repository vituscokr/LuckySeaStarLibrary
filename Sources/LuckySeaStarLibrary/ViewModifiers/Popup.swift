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

/*
 사용예시
 import SwiftUI
 import LuckySeaStarLibrary

 struct ContentView: View {
     @State var isPopupPresented :Bool = false
     var body: some View {
         VStack {
             Button(action:{
                 isPopupPresented = true
             }){
                 Text("show")
             }
         }
         .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
         .modifier(Popup(isPresented: isPopupPresented, content:{
                 ZStack {
                     Rectangle()
                         .fill(Color.red)
                     VStack {
                         Button(action:{
                             isPopupPresented = false
                         }) {
                             Text("hide------------------------")
                                 .foregroundColor(Color.white)
                         }
                     }
                 }
                 .border(Color.blue, width:1)
         }))
     }
 }
 
 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
 */
