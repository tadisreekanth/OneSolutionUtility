//
//  ViewExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation
import SwiftUI

//MARK: - Navigation title Display Mode

public extension View {
    @ViewBuilder func navigationTitleInlineMode() -> some View {
        if #available(iOS 14.0, *) {
            self.navigationBarTitleDisplayMode(.inline)
        } else {
            self
        }
    }
}

//MARK: - Frames

public extension View {
    @ViewBuilder func basicWidth() -> some View {
        self.frame(width: 44)
    }
    @ViewBuilder func basicHeight() -> some View {
        self.frame(height: 44)
    }
    @ViewBuilder func minimumHeight() -> some View {
        self.frame(minHeight: 44)
    }
}

//MARK: - Row Separator

public extension View {
    @ViewBuilder func hideRowSeparator() -> some View {
        if #available(iOS 15.0, *) {
            self
                .listStyle(.plain)
                .listRowSeparator(.hidden)
                .listRowSeparatorTint(.clear)
                .listSectionSeparator(.hidden)
                .menuIndicator(.hidden)
        } else {
            self.listStyle(.plain)
        }
    }
}

public extension View {
    @ViewBuilder func rowWhiteBackground() -> some View {
        self.listRowBackground(
            RoundedRectangle(cornerRadius: subViewCornerRadius)
                .background(Color.clear)
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10)))
    }
    
    @ViewBuilder func whiteBackground() -> some View {
        self.padding(EdgeInsets(top: 7, leading: 7, bottom: 7, trailing: 7))
            .background(RoundedRectangle(cornerRadius: subViewCornerRadius)
            .foregroundColor(Color.white))
    }
}
