//
//  ProgressView.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation
import SwiftUI

/// The UI for a Progress
public struct Progress: View {
    public var text: String?
    public var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.app_separator)
                .frame(width: 70)
                .aspectRatio(1.0, contentMode: .fit)
                .cornerRadius(5)
            if #available(iOS 14.0, *) {
                if let title = text {
                    ProgressView(title)
                } else {
                    ProgressView("")
                }
            }
        }
    }
}

public extension View {
    /// ViewModifier that will present a progress when its binding changes
    @ViewBuilder func progress(progressCount: Binding<Int>, text: String?) -> some View {
        ZStack {
            self
                .blur(radius: progressCount.wrappedValue > 0 ? 2 : 0)
                .disabled(progressCount.wrappedValue > 0)
            if progressCount.wrappedValue > 0 {
                Progress(text: text)
            }
        }
        .safeArea()
    }
}

/// Global class that will manage toasts
public class ProgressPresenter: ObservableObject {
    // This static property probably isn't even needed as you can inject via @EnvironmentObject
    static let shared: ProgressPresenter = ProgressPresenter()
    
    private init() {}
    
    private(set) var text: String?
    @Published var progressCount: Int = 0
    
    func showProgress(text: String? = nil) {
        self.text = text
        progressCount += 1
    }
    
    func hideProgress() {
        DispatchQueue.main.async {
            self.progressCount -= 1
        }
    }
}
