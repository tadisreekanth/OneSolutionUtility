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
        if #available(iOS 14.0, *) {
            if let title = text {
                ProgressView(title)
            } else {
                ProgressView("")
            }
        } else {
            EmptyView()
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
    public static let shared: ProgressPresenter = ProgressPresenter()
    
    private init() {}
    
    public private(set) var text: String?
    @Published public var progressCount: Int = 0
    
    public func showProgress(text: String? = nil) {
        self.text = text
        progressCount += 1
    }
    
    public func hideProgress() {
        DispatchQueue.main.async {
            self.progressCount -= 1
        }
    }
}

public struct LoaderModifier: ViewModifier {
    public var isLoading: Bool
    
    public func body(content: Content) -> some View {
        if #available(iOS 15.0, *) {
            content.disabled(isLoading)
                .overlay {
                    if isLoading {
                        ZStack(alignment: .center) {
                            ProgressView()
                        }
                    }
                }
        } else {
            // Fallback on earlier versions
            if isLoading {
                ZStack {
                    content.disabled(isLoading)
                    Progress()
                }
            } else {
                content
            }
        }
    }
}

// MARK: VIEW EXTENSION
public extension View {
    func loader(_ loading: Bool) -> some View {
        self.modifier(LoaderModifier(isLoading: loading))
    }
}
