//
//  VeloItem.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct VeloRowItem : View {
    
    let veloItem: VeloItem

    public init(veloItem: VeloItem) { self.veloItem = veloItem }
    
    public var body: some View {
        HStack {
            HStack(spacing: 8) {
                Circle()
                    .fill(veloItem.status.color)
                    .frame(width: 12, height: 12)
                    .padding(.trailing, 8)
                Text(veloItem.name)
                    .color(.white)
                    .frame(width: 300, alignment: .leading)
            }
            VeloIconItem(icon: "velo_icon", description: "\(veloItem.bikes)")
            VeloIconItem(icon: "lock_icon", description: "\(veloItem.slots)")
        }
    }
}

#if DEBUG
struct VeloRowItem_Previews : PreviewProvider {
    static var previews: some View {
        VeloRowItem(veloItem: VeloItem(name: "Test", bikes: 10, slots: 10, status: .open))
    }
}
#endif
