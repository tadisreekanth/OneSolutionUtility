//
//  DateExtension.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 26/03/24.
//

import Foundation

public extension Date {
    func string(of format: String) -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = format
        
        return dateformatter.string(from: self)
    }
}
