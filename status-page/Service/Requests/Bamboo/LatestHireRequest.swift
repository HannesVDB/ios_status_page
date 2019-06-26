//
//  LatestHireRequest.swift
//  Service
//
//  Created by Hannes Van den Berghe on 27/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara

struct LatestHireRequest: Request {
    
    var url: URL? {
        return URL(string: "bamboo/latest")
    }
    
    var method: RequestMethod {
        return .get
    }
        
}
