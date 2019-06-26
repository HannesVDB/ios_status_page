//
//  SocketConfiguration.swift
//  Service
//
//  Created by Dylan Gyesbreghs on 26/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public struct SocketConfiguration {
    
    // MARK: - Internal Properties
    internal let baseURL: URL
    
    // MARK: - Init
    public init(baseURL: URL) {
        self.baseURL = baseURL
    }
    
}
