//
//  CareItem.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct CareItem : View {
    
    public init() { }
    
    public var body: some View {
        VStack(alignment: .leading) {
            CareHeader().padding([.leading, .trailing, .top], 24)
            Divider()
            CareSubject()
            CareItemStatus()
        }
        .background(Color.icBlue)
        .cornerRadius(16)
        .shadow(color: .black, radius: 32, x: 8, y: 16)
    }
}

#if DEBUG
struct CareItem_Previews : PreviewProvider {
    static var previews: some View {
        CareItem()
    }
}
#endif
