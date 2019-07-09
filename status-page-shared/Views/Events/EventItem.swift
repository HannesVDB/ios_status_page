//
//  EventItem.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 09/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct EventItem : View {
    
    private let event: Event
    
    public init(event: Event) {
        self.event = event
    }
    
    public var body: some View {
        HStack {
            OpenSansLabel(text: event.start)
            Rectangle().fill(Color.icGreen).frame(width: 4, height: 40)
            GeneralLabel(text: event.summary).frame(width: 200)
            }.frame(height: 40)
    }
}

#if DEBUG
struct EventItem_Previews : PreviewProvider {
    static var previews: some View {
        EventItem(event: Event(summary: "Something", description: "description", location: "loction", status: "status", start: "2019-03-01T17:30:00.000Z", end: "2019-03-01T18:30:00.000Z"))
    }
}
#endif
