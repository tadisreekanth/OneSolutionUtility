//
//  ScanKey.swift
//  OneSolutionUtility
//
//  Created by Sreekanth Reddy Tadi on 30/09/23.
//

import Foundation


//MARK: - scan keys

public enum ScanKey: String {
    case cargoId = "cargoId"
    case salesOrder = "salesOrder"
    case outBoundBOL = "outBoundBOL"
    case msoid = "msoNum"
    case itomnumber = "itomnumber"
    case modelyear = "modelYear"
    case configuration = "configuration"
    case barcodeUnique = "barcodeUniqueSeq"
    case witem = "witemNum"
    
    public static func key(for key: String) -> ScanKey {
        switch key {
        case "cargoid"       : return .cargoId
        case "salesorder"    : return .salesOrder
        case "outboundbol"   : return .outBoundBOL
        case "msoid"         : return .msoid
        case "itomnumber"    : return .itomnumber
        case "modelyear"     : return .modelyear
        case "configuration" : return .configuration
        case "barcodeuniqueseq" : return .barcodeUnique
        default: return .cargoId
        }
    }
}
