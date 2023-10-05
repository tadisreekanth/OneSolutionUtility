//
//  ArrayExtension.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 05/10/23.
//

import Foundation

public extension Array where Element == String {
    
    var joinedUrl: String {
        self.joined(separator: "/")
    }
    
    var joinedLine: String {
        self.joined(separator: "\n")
    }
}
