//
//  File.swift
//  
//
//  Created by vitus on 2021/07/22.
//

import Foundation
import SwiftyJSON
extension JSON{
    public mutating func appendIfArray(json:JSON){
        if var arr = self.array{
            arr.append(json)
            self = JSON(arr);
        }
    }
    
    public mutating func appendIfDictionary(key:String,json:JSON){
        if var dict = self.dictionary{
            dict[key] = json;
            self = JSON(dict);
        }
    }
}
