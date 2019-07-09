//
//  CustomDateFormatter.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 09/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

extension DateFormatter {
    
    fileprivate static var serverDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current // Locale(identifier:"en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return formatter
    }()
    
    static var shortDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current // Locale(identifier:"en_US_POSIX")
        serverDateFormatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    class func serverDateStringFromDate(_ date: Date) -> String {
        serverDateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return serverDateFormatter.string(from: date)
    }
    
    class func dateFromServerDateString(_ dateString: String?) -> Date {
        guard let
            dateString = dateString,
            let date = serverDateFormatter.date(from: dateString) else {
                return Date()
        }
        return date
    }
    
    class func shortDateString(from date: Date) -> String {
        serverDateFormatter.dateFormat = "yyyy-MM-dd"
        return serverDateFormatter.string(from: date)
    }
}
