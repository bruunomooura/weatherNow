//
//  Core+Extensions.swift
//  weatherNow
//
//  Created by Bruno Moura on 15/11/23.
//

import Foundation

extension Int {
    func toWeekdayName() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EE" // "EE" represents the full weekday name
        dateFormatter.locale = Locale(identifier: "pt_BR")

        var weekdayName = dateFormatter.string(from: date)
         
         // Remove the period if present
         if let lastCharacter = weekdayName.last, lastCharacter == "." {
             weekdayName.removeLast()
         }
        
        return weekdayName
    }
    
    func toHourFormat() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm" // "HH:mm" represents the 24-hour format
        
        return dateFormatter.string(from: date)
    }
    
    func isDayTime() -> Bool {
        let date = Date(timeIntervalSince1970: TimeInterval(self))
        let hour = Calendar.current.component(.hour, from: date)
        
        let dayStartHour = 6
        let dayEndHour = 18
        
        return hour >= dayStartHour && hour < dayEndHour
    }
}

extension Double {
    func toCelsius () -> String {
        "\(Int(self))°C"
    }
}
