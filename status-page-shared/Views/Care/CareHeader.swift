//
//  CareHeader.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct CareHeader : View {
    
    public init() { }
    
    public var body: some View {
        HStack {
            HStack(spacing: 16) {
                HeaderLabel(text: "icapps care")
                OpenSansLabel(text: "3 unresolved tickets", color: Color.gray)
            }
            ProfileHeader().frame(alignment: .trailing)
        }
    }
}

#if DEBUG
struct CareHeader_Previews : PreviewProvider {
    static var previews: some View {
        CareHeader()
    }
}
#endif
