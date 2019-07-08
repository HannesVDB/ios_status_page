//
//  EventsResponse.swift
//  Service
//
//  Created by Hannes Van den Berghe on 01/03/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public struct EventsResponse: Codable {
    public var data: [Event]
}

public struct Event: Codable {
    public var summary: String
    public var description: String
    public var location: String
    public var status: String
    public var start: String
    public var end: String
}
