//
//  DeviceExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation

public extension UIDevice {
    
    static var deviceID: String {
        current.identifierForVendor?.uuidString ?? ""
    }
 
    static var isIphone: Bool {
        current.userInterfaceIdiom == .phone
    }
    
    static var isIpad: Bool {
        current.userInterfaceIdiom == .pad
    }
    
}
