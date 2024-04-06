//
//  File.swift
//  OneSolutionAPI
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation

//MARK: - Corner Radius
public let viewCornerRadius = 8.0
public let subViewCornerRadius = 6.0
public let textFieldCornerRadius = 5.0
public let buttonCornerRadius = 5.0

//MARK: - Spacing
public let buttonsSpacing = 20.0


//MARK: -
public let maxResults_1K = 1000
public let maxResults = 100



//MARK: - Firebase
public var firebasePlistFileName: String {
//    if kAppBundleIdentifier == kBundleIdentifier_Production {
        return "GoogleService-Info"
//    }else if kAppBundleIdentifier == kBundleIdentifier_UAT {
//        return "GoogleService-UAT-Info"
//    }else {
//        return "GoogleService-Test-Info"
//    }
}


//var keyVersion: String {
//if kAppBundleIdentifier == kBundleIdentifier_Production {
//    return  "iosPro"
//}
//else if kAppBundleIdentifier == kBundleIdentifier_EPC_UAT {
//    return "iosUat"
//}
//else if kAppBundleIdentifier == kBundleIdentifier_UAT {
//    return "iosUat"
//}
//return "iosUat"
//}

//MARK: - DEBUG Log
public var isDebug: Bool {
#if DEDEBUG
    return true
#else
    return false
#endif
}

public var isSimulator: Bool {
    if isDebug {
        return true
    }
    return TARGET_OS_SIMULATOR == 1
}

public func print (log: Any) {
//    if isDebug {
        print(log)
//    }
}

////MARK: - Notification Observers
//
//let kNotificationName_loadout = "updateLoadOut"
//let kNotificationName_workorderUpdated = "workorderStatuUpdated"
//
//let kNotificationName_updateCompletedchecklist = "updateCompletedchecklist"
//
//let kNotificationName_409Update = "clearViewData"
//let kNotificationName_appEnterBackground = "didEnterBackground"
//
//
//func anyStatusObserversWhenAppTerminated () {
//NotificationCenter.default.post(name: NSNotification.Name (kNotificationName_loadout), object: nil)
//}
//
////extension UIViewController {
////    func isChecklist_Re_Screen () -> Bool {
////        return self.isKind(of: WorkOrdersVC.self) || self.isKind(of: LoadOutVC.self) ||
////            self.isKind(of: GenerealChecksVC.self) || self.isKind(of: GeneralCheckReferenceVC.self) ||
////            self.isKind(of: LoadOutReferenceVC.self) || self.isKind(of: LoadOutReferenceVC_Re.self) ||
////            self.isKind(of: GeneralProcessWorkOrdersVC.self)
////    }
////}
