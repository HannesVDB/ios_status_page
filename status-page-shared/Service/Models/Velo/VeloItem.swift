//
//  VeloItem.swift
//  Service
//
//  Created by Hannes Van den Berghe on 27/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import UIKit

public struct VeloItem: Codable {
    
    public var name: String
    public var bikes: Int
    public var slots: Int
    public var status: VeloStatus
    
}

public enum VeloStatus: String, Codable {
    case open = "OPN"
    
    public var color: UIColor {
        switch self {
        case .open: return UIColor.green
        }
    }
}
