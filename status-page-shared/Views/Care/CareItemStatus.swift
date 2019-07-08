//
//  CareItemStatus.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct CareItemStatus : View {
    
    var status: some View {
        GeneralLabel(text: "High", color: .white)
            .padding(12)
            .background(Color.icOrange)
            .cornerRadius(8)
    }
    
    var body: some View {
        HStack(spacing: 16) {
            status
            OpenSansLabel(text: "First response due in 55 minues", color: .white, size: 16)
        }.padding(24)
    }
}

#if DEBUG
struct CareItemStatus_Previews : PreviewProvider {
    static var previews: some View {
        CareItemStatus()
    }
}
#endif
