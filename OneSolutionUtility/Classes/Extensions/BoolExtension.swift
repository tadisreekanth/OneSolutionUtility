//
//  BoolExtension.swift
//  OneSolutionAPI
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation

public extension Bool {
    var stringValue: String {
        return NSNumber(value: self).stringValue
    }
    var intValue: Int {
        return NSNumber(value: self).intValue
    }
}
