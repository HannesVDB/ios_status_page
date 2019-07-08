//
//  EventsRequest.swift
//  Service
//
//  Created by Hannes Van den Berghe on 01/03/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara
import UIKit

struct EventsRequest: Request {
    
    var url: URL? {
        return URL(string: "events")
    }
    
    var method: RequestMethod {
        return .get
    }
    
}
