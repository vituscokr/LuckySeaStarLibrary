//
//  File.swift
//  
//
//  Created by vitus on 2021/07/22.
//

import Foundation
import SwiftyJSON

public class MyItem: ObservableObject, Identifiable, Codable, Equatable {
    public static func == (lhs: MyItem, rhs: MyItem) -> Bool {
        if lhs.id == rhs.id {
            return true
        }else {
            return false
        }
    }
    
    public var id = UUID()
    var item = JSON()
    
    public init() {
        self.id = UUID()
        self.item = JSON()
    }
    
    public init(item:JSON) {
        self.id = UUID()
        self.item = item
    }
}
