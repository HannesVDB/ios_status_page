//
//  Status.swift
//  Service
//
//  Created by Dylan Gyesbreghs on 26/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public enum StatusType: String, Codable {
    case green = "green"
    case yellow = "yellow"
    case red = "red"
    case orange = "orange"
}

public struct Serve: Codable {
    public let status: StatusType
    public let image: String
    public let description: String
}

public struct Status: Codable {
    public let heroku: Serve
    public let bitbucket: Serve
    public let slack: Serve
    public let jenkins: Serve
    public let network: Serve
}

public struct Statuses: Codable {
    public let statuses: Status
    
    public var allServes: [Serve] {
        return [statuses.heroku, statuses.bitbucket, statuses.slack, statuses.jenkins, statuses.network]
    }
}
