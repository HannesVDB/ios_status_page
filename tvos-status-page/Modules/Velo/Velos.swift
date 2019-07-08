//
//  Velos.swift
//  tvos-status-page
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import status_page_shared

struct Velos : View {
    
    var body: some View {
        VStack {
            Text("Available Velo Bikes")
                .color(.white)
                .padding(.leading)
            VeloOverview()
                .padding([.leading, .trailing], 24)
        }
        .frame(width: 700, height: 400)
        .background(Color.icBlue)
        .cornerRadius(16)
        .shadow(color: .black, radius: 32, x: 8, y: 16)
    }
}

#if DEBUG
struct Velos_Previews : PreviewProvider {
    static var previews: some View {
        Velos()
    }
}
#endif
