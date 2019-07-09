//
//  CareItem.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import Combine

public struct CareItem : View {
    
    @EnvironmentObject var serviceStore: ServiceStore
    
    private func fetchCare() {
        serviceStore.fetchCare()
    }
    
    private var ticket: CareTicket? {
        return tickets.first
    }
    
    private var tickets: [CareTicket] {
         let state = serviceStore.state.careState
        return state ?? []
    }
    
    public init() { }
    
    public var body: some View {
        ZStack {
            if ticket != nil {
                VStack(alignment: .leading) {
                    CareHeader(careTicket: ticket!, amountOpenTickets: tickets.count).padding([.leading, .trailing, .top], 24)
                    Divider()
                    CareSubject(careTicket: ticket!)
                    CareItemStatus(careTicket: ticket!)
                    }
                    .background(Color.icBlue)
                    .cornerRadius(16)
                    .shadow(color: .black, radius: 32, x: 8, y: 16)
            }
        }
        .onAppear {
            self.fetchCare()
        }

    }
}

#if DEBUG
struct CareItem_Previews : PreviewProvider {
    static var previews: some View {
        CareItem()
    }
}
#endif
