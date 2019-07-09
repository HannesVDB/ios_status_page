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
        VStack(alignment: .leading) {
            HeaderLabel(text: "Available bikes", color: .white, size: 32).padding([.leading, .trailing, .top], 12)
            List(veloItems) { velo in
                VeloRowItem(veloItem: velo)
            }
        }
        .frame(width: 600, height: 400)
        .background(Color.icBlue)
        .cornerRadius(16)
        .shadow(color: .black, radius: 32, x: 8, y: 16)
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
