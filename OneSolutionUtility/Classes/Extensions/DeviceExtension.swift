//
//  DeviceExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation

public var kDeviceId: String {
    return UIDevice.current.identifierForVendor?.uuidString ?? ""
}
