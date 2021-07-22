//
//  SwiftUIView.swift
//  
//
//  Created by vitus on 2021/07/22.
//

import SwiftUI
//전체 단위가 8 인 프로그레스바 구현 
public struct ProgressBar: View {
    private let value:Int
    private let max:Int
    private let accentColor : Color
    private let backgroundColor : Color
    private let height:CGFloat
    
    public init(
        value:Int,
        max:Int = 8 ,
        accentColor:Color = Color.red,
        backgroundColor: Color = Color.gray,
        height : CGFloat = 4
    ) {
        self.value = value
        self.max = max
        self.accentColor = accentColor
        self.backgroundColor = backgroundColor
        self.height = height
    }
    public var body: some View {
        GeometryReader { geometery in
            ZStack(alignment: .leading) {
                backgroundColor
                    .frame(minWidth:0, maxWidth:.infinity, minHeight: height, maxHeight: height)
                accentColor
                    .frame( width:( geometery.size.width / CGFloat(max) ) * CGFloat(value), height:height)
            }
            .frame(minWidth:0, maxWidth:.infinity, minHeight:height, maxHeight: height)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: 1, accentColor: Color.yellow, backgroundColor: Color.white, height: 8)
    }
}
