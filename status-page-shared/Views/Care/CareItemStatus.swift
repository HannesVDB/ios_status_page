//
//  CareItemStatus.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct CareItemStatus : View {
    
    private let careTicket: CareTicket
    
    public init(careTicket: CareTicket) { self.careTicket = careTicket }
    
    var status: some View {
        GeneralLabel(text: careTicket.priority.rawValue, color: .white)
            .padding(12)
            .background(careTicket.priority.color)
            .cornerRadius(8)
    }
    
    var body: some View {
        HStack(spacing: 16) {
            status
            OpenSansLabel(text: "\(careTicket.due)", color: .white, size: 16)
        }.padding(24)
    }
}

#if DEBUG
struct CareItemStatus_Previews : PreviewProvider {
    static var previews: some View {
        CareItemStatus(careTicket: CareTicket(subject: "A subject", replied: false, overtime: true, agent: "Agent", due: Date(), priority: CarePriority.high, status: CareStatus.open, requestName: "Somebody"))
    }
}
#endif
