//
//  ServeView.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct ServeView : View {
    
    let serve: Serve
    
    public init(serve: Serve) { self.serve = serve }
    
    public var body: some View {
        VStack {
            Image("placeholder")
            Text(serve.description).color(.white)
        }
        .background(Color.icBlue)
        .cornerRadius(16)
    }
}

#if DEBUG
struct ServeView_Previews : PreviewProvider {
    static var previews: some View {
        ServeView(serve: Serve(status: .green, image: "placeholder", description: "Test"))
    }
}
#endif
