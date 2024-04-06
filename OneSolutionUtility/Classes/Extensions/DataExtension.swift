//
//  DataExtension.swift
//  OneSolutionAPI
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation

public extension Data {
    
    var lowerCasedKeysData: Data {
        if let json = try? JSONSerialization.jsonObject(with: self) as? [String: Any],
           let data = try? JSONSerialization.data(withJSONObject: json.lowerCasedKeysJson) {
            return data
        }
        return self
    }
    
    func decode<T: Decodable>(_ type: T.Type) -> Result<T, Error> {
        do {
            let item = try JSONDecoder().decode(type, from: self)
            return .success(item)
        } catch {
            print(log: error.localizedDescription)
            return .failure(error)
        }
    }
}
