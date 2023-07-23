//
//  DoubleExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation

public extension Double {
    var stringValue: String {
        return String(format: "%0.f", self)
    }
}
