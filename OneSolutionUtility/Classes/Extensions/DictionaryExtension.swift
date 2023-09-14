//
//  DictionaryExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation

public extension Dictionary where Key == String, Value == Any {
    var lowerCasedKeysJson: [String: Any] {
        var json: [String: Any] = [:]
        self.keys.forEach { key in
            let value = self[key]
            json[key.lowercased()] = value
        }
        return json
    }
}

//Modular or ODR


