//
//  ServeOverview.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct ServeOverview : View {
    
    private let status: ServiceStatus
    
    public init(status: ServiceStatus) {
        self.status = status
    }
    
    public var body: some View {
        HStack {
            ServeView(serve: status.network)
            ServeView(serve: status.bitbucket)
            ServeView(serve: status.heroku)
            ServeView(serve: status.jenkins)
            ServeView(serve: status.slack)
        }
    }
}

#if DEBUG
struct ServeOverview_Previews : PreviewProvider {
    static var previews: some View {
        ServeOverview(status: ServiceStatus(heroku: Serve(status: .green, image: "placeholder", description: "5.16 MB/s"),
                                            bitbucket: Serve(status: .green, image: "placeholder", description: "Howdy y'all"),
                                            slack: Serve(status: .green, image: "placeholder", description: "Mayday!"),
                                            jenkins: Serve(status: .green, image: "placeholder", description: "Running"),
                                            network: Serve(status: .green, image: "placeholder", description: "5.16 MB/s")))
    }
}
#endif
