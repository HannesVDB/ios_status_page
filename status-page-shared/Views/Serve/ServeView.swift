//
//  ServeView.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import Combine

public struct ServeView : View {
    
    let serve: Serve
    @State private var backgroundColor = Color.icBlue
    public init(serve: Serve) { self.serve = serve }
    
    public var body: some View {
        VStack {
            Image("placeholder")
                .padding([.top], 16)
                .padding([.leading, .trailing], 32)
            Text(serve.description)
                .color(.white)
                .padding([.leading, .trailing, .bottom], 16)
        }
        .focusable(true) { focused in
            self.backgroundColor = focused ? Color.icSeaBlue : Color.icBlue
        }
        .background(backgroundColor)
        .cornerRadius(16)
        .shadow(color: .black, radius: 32, x: 8, y: 16)


    }
}

#if DEBUG
struct ServeView_Previews : PreviewProvider {
    static var previews: some View {
        ServeView(serve: Serve(status: .green, image: "placeholder", description: "Test"))
    }
}
#endif
