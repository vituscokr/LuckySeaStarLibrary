//
//  SwiftUIView.swift
//  
//
//  Created by Kyungtae Nam on 2021/07/15.
//

import SwiftUI


struct LineView: View {
    var body: some View {
           Rectangle()
            .foregroundColor(Color.gray)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 1 , maxHeight: 1)
        
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
