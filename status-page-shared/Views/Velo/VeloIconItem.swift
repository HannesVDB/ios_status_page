//
//  VeloIconItem.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct VeloIconItem : View {
    
    var icon: String
    var description: String
    
    public init(icon: String, description: String) {
        self.icon = icon
        self.description = description
    }
    
    public var body: some View {
        HStack(spacing: 4) {
            Image(icon).frame(width: 23, height: 16, alignment: .center)
            Text(description).color(.white)
        }
    }
}

#if DEBUG
struct VeloIconItem_Previews : PreviewProvider {
    static var previews: some View {
        VeloIconItem(icon: "lock_icon", description: "Something")
    }
}
#endif
