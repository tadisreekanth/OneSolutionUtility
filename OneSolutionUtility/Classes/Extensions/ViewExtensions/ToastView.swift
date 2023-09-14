//
//  ToastView.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 13/07/23.
//

import Foundation
import SwiftUI

/// The UI for a toast
public struct ToastView: View {
    var text: String
    public var body: some View {
        Text(text)
            .foregroundColor(Color.app_black)
            .padding()
            .background(Capsule().fill(Color.white))
            .shadow(radius: 6)
            .transition(AnyTransition.opacity.animation(.default))
    }
}

public extension View {
    /// ViewModifier that will present a toast when its binding changes
    @ViewBuilder func toast(presented: Binding<Bool>, text: String) -> some View {
        ZStack {
            self
            if presented.wrappedValue {
                ToastView(text: text)
            }
        }
        .safeArea()
    }
    
    func safeArea() -> some View {
        if #available(iOS 14.0, *) {
            return self.ignoresSafeArea(.all, edges: .all)
        } else {
            return self
        }
    }
}

/// Global class that will manage toasts
public class ToastPresenter: ObservableObject {
    // This static property probably isn't even needed as you can inject via @EnvironmentObject
    public static let shared: ToastPresenter = ToastPresenter()
    
    private init() {}
    
    @Published public var isPresented: Bool = false
    public private(set) var text: String?
    private var timer: Timer?
    
    /// Call this function to present toasts
    public func presentToast(text: String, duration: TimeInterval = 3) {
        DispatchQueue.main.async {
            // reset the toast if one is currently being presented.
            self.isPresented = false
            self.text = nil
            self.timer?.invalidate()
            
            self.text = text
            self.isPresented = true
            self.timer = Timer.scheduledTimer(withTimeInterval: duration, repeats: false, block: { [weak self] _ in
                self?.isPresented = false
            })
        }
    }
}
