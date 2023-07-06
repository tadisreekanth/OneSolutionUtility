//
//  File.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation

public protocol AppConstants: AnyObject {

    var appVersion: String { get }
    var buildVersion: String { get }

    var bundleIdentifier: String { get }
}


////MARK: - App Bundle
//
//let kAppVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
//let kAppBuild = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? "1"
//
//let kAppBundleIdentifier = Bundle.main.bundleIdentifier ?? ""
//
//let kBundleIdentifier_Production = "com.Infyz.OneSolution"
//let kBundleIdentifier_EPC_UAT = "com.Infyz.OneSolutionEPCUAT"
//let kBundleIdentifier_UAT = "com.Infyz.OneSolutionUAT"
//let kBundleIdentifier_Dev = "com.yqlabs.OneSolution"
//
//
//var keyVersion: String {
//    if kAppBundleIdentifier == kBundleIdentifier_Production {
//        return  "iosPro"
//    }
//    else if kAppBundleIdentifier == kBundleIdentifier_EPC_UAT {
//        return "iosUat"
//    }
//    else if kAppBundleIdentifier == kBundleIdentifier_UAT {
//        return "iosUat"
//    }
//    return "iosUat"
//}
