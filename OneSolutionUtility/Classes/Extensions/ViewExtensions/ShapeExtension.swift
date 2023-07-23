//
//  ShapeExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation
import SwiftUI

public extension Shape {
    @ViewBuilder func pathColor(_ color: Color, _ lineWidth: CGFloat = 10) -> some View {
        self.stroke(color, style: StrokeStyle(lineWidth: lineWidth))
    }
}
