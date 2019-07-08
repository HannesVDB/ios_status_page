//
//  StatusSocketService.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 08/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public final class StatusSocketService {
    
    private let configuration: SocketConfiguration
    private let socket: Socket
    private(set) var statusses: Statuses?
    
    var updateUIHandler:(() -> Void)?
    
    init() {
        configuration = SocketConfiguration(baseURL: URL(string: "https://icapps-nodejs-statuspage.herokuapp.com/")!)
        socket = Socket(configuration: configuration)
    }
    
    func reloadData() {
        socket.onUpdate = { statuses in
            print("Something here")
            self.statusses = statuses
            self.updateUIHandler?()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            if Thread.isMainThread {
                self.socket.subscribe()
            } else {
                DispatchQueue.main.sync {
                    self.socket.subscribe()
                }
            }
        }
    }
}
