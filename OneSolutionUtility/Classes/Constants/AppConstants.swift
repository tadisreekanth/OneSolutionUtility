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
    
    var appEnvironmentText: String { get }
    
    var defaultCredentials: (userName: String, password: String) { get }
}

//let appDelegate = UIApplication.shared.delegate as! AppDelegate
//var kWindow: UIWindow = UIApplication.shared.windows.last ?? appDelegate.window!
//var kWindowFirst: UIWindow = UIApplication.shared.windows.first ?? appDelegate.window!
//var kNavigationController: UINavigationController?


//let kStoryboardMain: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//let kStoryboardLogin: UIStoryboard = UIStoryboard(name: "Login", bundle: Bundle.main)
