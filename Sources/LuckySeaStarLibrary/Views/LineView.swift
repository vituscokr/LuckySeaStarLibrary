//
//  SwiftUIView.swift
//  
//
//  Created by Kyungtae Nam on 2021/07/15.
//

import SwiftUI


public struct LineView: View {
    private let color: Color
    private let height: CGFloat
    public init(
        color: Color = Color.gray ,
        height : CGFloat = 1
    )  {
        self.color = color
        self.height = height
    }
    public var body: some View {
           Rectangle()
            .foregroundColor(color)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: height , maxHeight: height)
        
    }
}


 /*
  사용예시
  import SwiftUI
  import LuckySeaStarLibrary

  struct ContentView: View {
      var body: some View {
         VStack {
             LineView()
             LineView(color: Color.red, height: 1)
             LineView(color: Color.blue, height : 8)
         }
      }
  }
  
  struct ContentView_Previews: PreviewProvider {
      static var previews: some View {
          ContentView()
      }
  }
  */
