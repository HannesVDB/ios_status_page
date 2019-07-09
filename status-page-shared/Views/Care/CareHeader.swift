//
//  CareHeader.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct CareHeader : View {
    
    private let careTicket: CareTicket
    private let amountOpenTickets: Int
    
    public init(careTicket: CareTicket, amountOpenTickets: Int) {
        self.careTicket = careTicket
        self.amountOpenTickets = amountOpenTickets
    }
    
    public var body: some View {
        HStack {
            HStack(spacing: 16) {
                HeaderLabel(text: "New ticket from \(careTicket.requestName)")
                OpenSansLabel(text: "\(amountOpenTickets) unresolved tickets", color: Color.gray)
            }
            Spacer()
            ProfileHeader(careTicket: careTicket).frame(alignment: .trailing)
        }
    }
}

#if DEBUG
struct CareHeader_Previews : PreviewProvider {
    static var previews: some View {
        CareHeader(careTicket: CareTicket(subject: "A subject", replied: false, overtime: true, agent: "Agent", due: Date(), priority: CarePriority.high, status: CareStatus.open, requestName: "Somebody"), amountOpenTickets: 3)
    }
}
#endif
