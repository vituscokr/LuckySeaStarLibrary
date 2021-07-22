//
//  File.swift
//  
//
//  Created by vitus on 2021/07/22.
//

import Foundation

extension Int {
    public func decimalStyle() -> String {
        let numFormatter : NumberFormatter = NumberFormatter();
        numFormatter.numberStyle = NumberFormatter.Style.decimal
        return numFormatter.string(from: NSNumber(integerLiteral: self))!
    }
}
