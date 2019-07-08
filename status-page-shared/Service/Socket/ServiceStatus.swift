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
    
    public init(status: StatusType, image: String, description: String) {
        self.status = status
        self.image = image
        self.description = description
    }
}

public struct ServiceStatus: Codable {
    public let heroku: Serve
    public let bitbucket: Serve
    public let slack: Serve
    public let jenkins: Serve
    public let network: Serve
    
    public init(heroku: Serve, bitbucket: Serve, slack: Serve, jenkins: Serve, network: Serve) {
        self.heroku = heroku
        self.bitbucket = bitbucket
        self.slack = slack
        self.jenkins = jenkins
        self.network = network
    }
}

public struct Statuses: Codable {
    public let statuses: ServiceStatus
    
    public var allServes: [Serve] {
        return [statuses.heroku, statuses.bitbucket, statuses.slack, statuses.jenkins, statuses.network]
    }
}
