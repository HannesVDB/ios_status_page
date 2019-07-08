//
//  ProfileHeader.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct ProfileHeader : View {
    
    private let careTicket: CareTicket
    
    public init(careTicket: CareTicket) { self.careTicket = careTicket }
    
    public var body: some View {
        HStack(spacing: 24) {
            HeaderLabel(text: careTicket.agent ?? "Unknown", size: 20)
            ZStack {
                Circle()
                    .foregroundColor(Color.white)
                    .frame(width: 48)
                Image("placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding(8)
                
            }.frame(width: 48, height: 48)
        }
    }
}

#if DEBUG
struct ProfileHeader_Previews : PreviewProvider {
    static var previews: some View {
        ProfileHeader(careTicket: CareTicket(subject: "A subject", replied: false, overtime: true, agent: "Agent", due: "now", priority: CarePriority.high, status: CareStatus.open, requestName: "Somebody"))
    }
}
#endif
