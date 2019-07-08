//
//  JenkinsBuild.swift
//  Service
//
//  Created by Hannes Van den Berghe on 28/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public struct JenkinsBuild: Codable {
    public var activity: String
    public var lastBuildStatus: String
    public var lastBuildLabel: String
    public var webUrl: String
    public var name: String
    public var lastBuildTime: String
    public var type: String
    public var visualName: String
    public var id: String
}
