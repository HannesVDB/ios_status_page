//
//  CareSubject.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

struct CareSubject : View {
    
    private let careTicket: CareTicket
    
    public init(careTicket: CareTicket) { self.careTicket = careTicket }
    
    var title: some View {
        OpenSansLabel(text: careTicket.subject, color: Color.white, size: 20)
    }
    
    var body: some View {
        VStack {
            title
                .padding([.leading, .trailing], 12)
                .padding([.top, .bottom], 6)
                .background(Color.icRed)
                .cornerRadius(8)
        }
        .padding([.leading, .trailing], 24)

    }
}

#if DEBUG
struct CareSubject_Previews : PreviewProvider {
    static var previews: some View {
        CareSubject(careTicket: CareTicket(subject: "A subject", replied: false, overtime: true, agent: "Agent", due: Date(), priority: CarePriority.high, status: CareStatus.open, requestName: "Somebody"))
    }
}
#endif
