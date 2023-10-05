//
//  ColorExtension.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 04/10/23.
//

import UIKit
import SwiftUI

@available(iOS 14.0, *)
public extension Color {
    
    var uiColor: UIColor {
        UIColor(self)
    }
    
    var instantInteractionOverlay40: Color {
        withAlphaComponent(0.4)
    }
    
    func withAlphaComponent(_ alpha: CGFloat) -> Color {
        uiColor.withAlphaComponent(alpha).swiftUIColor
    }
}

public extension UIColor {
    
    var swiftUIColor: Color {
        Color(self)
    }
}
