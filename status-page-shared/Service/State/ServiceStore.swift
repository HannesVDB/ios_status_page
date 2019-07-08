//
//  ServiceStore.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import SwiftUI
import Combine

public let serviceStore = ServiceStore()

public final class ServiceStore: BindableObject {

    public var didChange = PassthroughSubject<ServiceStore, Never>()
    
    public struct ServiceState {
        public var serviceStatusState: ServiceStatus
    }

    private(set) var state = ServiceState(serviceStatusState: ServiceStatus()) {
        didSet {
            didChange.send(self)
        }
    }
    
    public func streamStatusService() {
        let socket = StatusSocketService()
        socket.updateUIHandler = {
            var state = self.state
            if let statusses = socket.statusses?.statuses {
                state.serviceStatusState = statusses
            }
            self.state = state
        }
        socket.reloadData()
    }
}
