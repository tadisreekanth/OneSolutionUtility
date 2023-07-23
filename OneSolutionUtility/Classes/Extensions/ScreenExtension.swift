//
//  ScreenExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 11/07/23.
//

import Foundation

public extension UIScreen {
    
    static var width: CGFloat {
        main.bounds.size.width
    }

    static var height: CGFloat {
        main.bounds.size.height
    }

    static var maxLength: CGFloat {
        max(width, height)
    }

    static var minLength: CGFloat {
        min(width, height)
    }
}
