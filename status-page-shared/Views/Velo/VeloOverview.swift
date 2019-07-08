//
//  VeloOverview.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct VeloOverview : View {

    @EnvironmentObject var serviceStore: ServiceStore

    private func fetchVelos() {
        serviceStore.fetchVelos()
    }
    
    private var veloItems: [VeloItem] {
        let state = serviceStore.state.veloState
        return state ?? []
    }
    
    public init() { }

    public var body: some View {
        List(veloItems) { velo in
            VeloRowItem(veloItem: velo)
        }
        .onAppear {
            self.fetchVelos()
        }
    }
}

#if DEBUG
struct VeloOverview_Previews : PreviewProvider {
    static var previews: some View {
        VeloOverview()
    }
}
#endif
