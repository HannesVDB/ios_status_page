//
//  BambooResponse.swift
//  Service
//
//  Created by Hannes Van den Berghe on 28/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public struct BambooResponse: Codable {
    public var past: [Profile]
    public var today: [Profile]
    public var future: [Profile]
}
