//
//  File.swift
//  
//
//  Created by Kyungtae Nam on 2021/07/19.
//

import Foundation
import UIKit

enum MyDateStringFormat : String {
    case defaultFormat = "yyyy-MM-dd"
    case defaultDateTime = "yyyy-MM-dd  HH:mm"
    case defaultDateTimeSecond = "yyyy-MM-dd  HH:mm:ss"
    case defaultHourMinute = "HH:mm"
    case hourMinute = "a h:mm"
    case year = "yyyy"
    case month = "MM"
    case quarter = "Q"
    case monthDay = "MM-dd"
    case monthInt = "M"


}

extension Date {
    static var currentTimeStamp: Int64{
        //return Int64(Date().timeIntervalSince1970 * 1000)
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
    
    //timestamp 에서 데이트를 구함
    func getDate(from:Int)  -> Date {
        return  Date(timeIntervalSince1970: TimeInterval(from / 1000))
        
    }
    func string(type:MyDateStringFormat) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = type.rawValue
            dateFormatter.locale = Locale(identifier: "ko_KR")
            return dateFormatter.string(from: self)
    }
    
    
    var timestamp:Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }    
}
