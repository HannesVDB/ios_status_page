//
//  VeloRequest.swift
//  Service
//
//  Created by Hannes Van den Berghe on 27/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara
import UIKit

struct VeloRequest: Request {
    
    var url: URL? {
        return URL(string: "velo/stations")
    }
    
    var method: RequestMethod {
        return .get
    }
    
}
