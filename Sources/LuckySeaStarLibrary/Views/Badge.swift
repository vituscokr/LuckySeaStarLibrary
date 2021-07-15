//
//  File.swift
//  
//
//  Created by vitus on 2021/07/16.
//
import SwiftUI

public struct Badge<T:View> : View {
    let isPresented : Bool
    let content : T
    let color : Color
    public init(isPresented: Bool, color : Color, @ViewBuilder content:() -> T) {
        self.isPresented = isPresented
        self.color = color
        self.content = content()
    }
    
    public var body : some View {
        ZStack(alignment: .topTrailing) {
            content
            if isPresented {
                Circle()
                    .foregroundColor(color)
                    .frame(width: 5, height: 5, alignment: .trailing)
                    .padding(EdgeInsets(top: 0, leading:0, bottom: 0, trailing: 0))
            }
        }
    }
}

/*
 사용예시
 struct ContentView: View {
     @State var isBadgePresented :Bool = false
     var body: some View {
         VStack {
             Badge(isPresented: isBadgePresented, color: Color.red) {
                 Text("Badge")
                     .border(Color.green, width:1)
             }
             Button(action:{
                 isBadgePresented.toggle()
             }){
                 Text("toggle")
             }
         }
     }
 }

 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
         ContentView()
     }
 }
 */
