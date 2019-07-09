//
//  CareTicket.swift
//  Service
//
//  Created by Hannes Van den Berghe on 28/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct CareTicket: Codable {
    public var subject: String
    public var replied: Bool
    public var overtime: Bool
    public var agent: String?
    public var due: Date
    public var priority: CarePriority
    public var status: CareStatus
    public var requestName: String
}

public enum CarePriority: String, Codable {
    case low = "Low"
    case medium = "Medium"
    case high = "High"
    
    public var color: Color {
        switch self {
        case .low: return Color.icGreen
        case .medium: return Color.icOrange
        case .high: return Color.icRed
        }
    }
}

public enum CareStatus: String, Codable {
    case open = "Open"
    case closed = "Closed"
}
