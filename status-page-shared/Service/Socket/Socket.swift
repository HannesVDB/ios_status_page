//
//  Socket.swift
//  Service
//
//  Created by Dylan Gyesbreghs on 26/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation

public class Socket {
 
    // MARK: - Public Properties
    public init(configuration: SocketConfiguration) {
        self.configuration = configuration
    }
    
    public var onUpdate: ((Statuses) -> Void)?
    
    // MARK: - Private Properties
    fileprivate let configuration: SocketConfiguration
    
    fileprivate var socket: WebSocket?
    
    public func subscribe() {
        socket = WebSocket(url: configuration.baseURL)
        socket?.advancedDelegate = self
        socket?.connect()
    }
}

// MARK: - WebSocketDelegate
extension Socket: WebSocketAdvancedDelegate {
    public func websocketDidConnect(socket: WebSocket) {
        
    }
    
    public func websocketDidDisconnect(socket: WebSocket, error: Error?) {
        
    }
    
    public func websocketDidReceiveMessage(socket: WebSocket, text: String, response: WebSocket.WSResponse) {
//        print(text)
        guard let data = text.data(using: .utf8) else { return }
        do {
            let response = try JSONDecoder().decode(Statuses.self, from: data)
            onUpdate?(response)
        } catch {
            print(error)
        }
    }
    
    public func websocketDidReceiveData(socket: WebSocket, data: Data, response: WebSocket.WSResponse) {
        
    }
    
    public func websocketHttpUpgrade(socket: WebSocket, request: String) {
        
    }
    
    public func websocketHttpUpgrade(socket: WebSocket, response: String) {
        
    }
}
