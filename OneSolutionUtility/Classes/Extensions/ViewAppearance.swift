//
//  ViewAppearance.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 04/10/23.
//

import Foundation

public extension NSMutableAttributedString {
    
    static func attributetitleFor (title: String,
                                   rangeStrings: [String],
                                   colors: [UIColor],
                                   fonts: [UIFont],
                                   alignmentCenter: Bool) -> NSMutableAttributedString {
        
        if rangeStrings.count != colors.count || rangeStrings.count != fonts.count {
            assertionFailure("setAttributetitleFor")
        }
        
        let str = NSString(format: "%@", title)
        
        let attr = NSMutableAttributedString(string: str as String)
        
        for i in 0...rangeStrings.count-1 {
            let rangeStr = rangeStrings[i]
            let color = colors.count>i ? colors[i] : UIColor.black
            let font = fonts.count>i ? fonts[i] : UIFont.systemFont(ofSize: 12)
            
            attr.addAttributes([NSAttributedString.Key.foregroundColor: color, .font: font], range: str.range(of: rangeStr))
        }
        return attr
    }
}
