//
//  UserDefault.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 31/08/23.
//

import Foundation

//@propertyWrapper
//public struct UserDefault<Value> {
//    public let key: String
//    public let defaultValue: Value
//    private var container: UserDefaults = .standard
//
//    public init(key: String, defaultValue: Value) {
//        self.key = key
//        self.defaultValue = defaultValue
//    }
//
//    public var wrappedValue: Value {
//        get {
//            return container.object(forKey: key) as? Value ?? defaultValue
//        }
//        set {
//            // Check whether we're dealing with an optional and remove the object if the new value is nil.
//            if newValue == nil {
//                container.removeObject(forKey: key)
//            } else {
//                container.set(newValue, forKey: key)
//            }
//        }
//    }
//}


@propertyWrapper
public struct UserDefault<Value> {
    let key: String
    let userDefaults: UserDefaults
    let defaultValue: Value

    public var wrappedValue: Value {
        get { userDefaults.value(forKey: key) as? Value ?? defaultValue }
        set { userDefaults.set(newValue, forKey: key) }
    }

    fileprivate init(
        wrappedValue: Value,
        key: String,
        userDefaults: UserDefaults
    ) {
        self.key = key
        self.userDefaults = userDefaults
        self.defaultValue = wrappedValue
    }
}

extension UserDefault where Value: ExpressibleByNilLiteral {
    public init(key: String) {
        self.init(wrappedValue: nil, key: key, userDefaults: .standard)
    }
}
