//
//  DeviceExtension.swift
//  OneSolutionUtility
//
//  Created by sreekanth reddy Tadi on 02/07/23.
//

import Foundation
import AVFoundation

public extension UIDevice {
    
    static var deviceID: String {
        current.identifierForVendor?.uuidString ?? ""
    }
 
    static var isIphone: Bool {
        current.userInterfaceIdiom == .phone
    }
    
    static var isIpad: Bool {
        current.userInterfaceIdiom == .pad
    }
    
}

public extension UIDevice {
    static func playSound (fileName: String, type: String) {
        let player = Player()
        DispatchQueue.main.asyncAfter(deadline: .now()) {
            player.playSound(fileName: fileName, type: type)
        }
        DispatchQueue.main.asyncAfter(deadline: .now()+1.2) {
            player.stopPlaySound()
        }
    }
    static func vibrateSuccess() {
//        Vibration.success.vibrate()
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    static func vibrateError() {
//        Vibration.error.vibrate()
    }
}


//enum Vibration {
//    case error
//    case success
//    case warning
//    case light
//    case medium
//    case heavy
//    @available(iOS 13.0, *)
//    case soft
//    @available(iOS 13.0, *)
//    case rigid
//    case selection
//    case oldSchool
//
//    public func vibrate() {
//        switch self {
//        case .error:
//            UINotificationFeedbackGenerator().notificationOccurred(.error)
//        case .success:
//            UINotificationFeedbackGenerator().notificationOccurred(.success)
//        case .warning:
//            UINotificationFeedbackGenerator().notificationOccurred(.warning)
//        case .light:
//            UIImpactFeedbackGenerator(style: .light).impactOccurred()
//        case .medium:
//            UIImpactFeedbackGenerator(style: .medium).impactOccurred()
//        case .heavy:
//            UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
//        case .soft:
//            if #available(iOS 13.0, *) {
//                UIImpactFeedbackGenerator(style: .soft).impactOccurred()
//            }
//        case .rigid:
//            if #available(iOS 13.0, *) {
//                UIImpactFeedbackGenerator(style: .rigid).impactOccurred()
//            }
//        case .selection:
//            UISelectionFeedbackGenerator().selectionChanged()
//        case .oldSchool:
//            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
//        }
//    }
//}

public class Player: NSObject {
    public var player: AVAudioPlayer?
    public override init() { }
    
    public func playSound (fileName: String, type: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: type) {
            let url = URL(fileURLWithPath: path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
                guard let play = player else { return }
                print(log: play)
                play.play()
            } catch  {
                print(error)
            }
        }
    }
    public func stopPlaySound() {
        player?.stop()
        player = nil
    }
}

