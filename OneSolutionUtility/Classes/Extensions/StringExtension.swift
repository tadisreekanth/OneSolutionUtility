//
//  StringExtension.swift
//  OneSolutionAPI
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation

public extension String {
    var intValue: Int? {
        return Int(self)
    }
}

public extension String {
    var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
