//
//  CareAgentRequest.swift
//  Service
//
//  Created by Hannes Van den Berghe on 27/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara

struct CareAgentRequest: Request {
    
    var url: URL? {
        return URL(string: "freshdesk/care-agent")
    }
    
    var method: RequestMethod {
        return .get
    }
    
}
