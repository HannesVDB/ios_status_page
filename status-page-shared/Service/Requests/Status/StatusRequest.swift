//
//  StatusRequest.swift
//  Service
//
//  Created by Dylan Gyesbreghs on 26/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara
import UIKit

struct StatusRequest: Request {
    
    var method: RequestMethod {
        return .get
    }
    
    // MARK: - Public Properties
    
    let service: String
    
    init(_ name: String) {
        self.service = name
    }
    
    var url: URL? {
        return URL(string: "\(service)/status")
    }
}
