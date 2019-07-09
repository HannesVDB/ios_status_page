//
//  EventsOverview.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 09/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI

public struct EventsOverview : View {
    
    @EnvironmentObject var serviceStore: ServiceStore
    
    private var events: [Event] {
        let state = serviceStore.state.eventsState
        return state ?? []
    }
    
    public init() { }
    
    public var body: some View {
        VStack(spacing: 16) {
            HeaderLabel(text: "Upcoming events")
            List {
                Section(header: GeneralLabel(text: "Today")) {
                    ForEach(events.identified(by: \.description)) { event in
                        EventItem(event: event)
                    }
                }
            }
        }
        .padding(16)
        .frame(height: 400)
        .background(Color.icBlue)
        .cornerRadius(16)
        .shadow(color: .black, radius: 32, x: 8, y: 16)
        .onAppear {
            self.fetchEvents()
        }
    }
    
    private func fetchEvents() {
        serviceStore.fetchEvents()
    }
    
    
}

#if DEBUG
struct EventsOverview_Previews : PreviewProvider {
    static var previews: some View {
        EventsOverview()
    }
}
#endif
