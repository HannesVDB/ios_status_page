//
//  ServeOverview.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import Combine

public struct ServeOverview : View {
    
    @EnvironmentObject var serviceStore: ServiceStore
    
    public init() {

    }
    
    var serves: [Serve] {
        let state = serviceStore.state.serviceStatusState
        return [state.bitbucket, state.network, state.heroku, state.jenkins, state.slack].compactMap { $0 }
    }
    
    func fetchServes() {
        serviceStore.streamStatusService()
    }
    
    public var body: some View {
        HStack {
            ForEach(serves.identified(by: \.image)) { serve in
                ServeView(serve: serve).frame(maxWidth: 125)
            }
        }.onAppear {
            self.fetchServes()
        }
    }
}

#if DEBUG
struct ServeOverview_Previews : PreviewProvider {
    static var previews: some View {
        ServeOverview()
    }
}
#endif
