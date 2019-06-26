//
//  Service.swift
//  Service
//
//  Created by Dylan Gyesbreghs on 26/02/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Foundation
import Cara

public class EMOMDefaultConfiguration: Configuration {
    public var baseURL: URL? {
        return URL(string: "https://icapps-nodejs-statuspage.herokuapp.com/api/v1/")!
    }
    
    public var headers: RequestHeaders? {
        return ["Authorization": "Basic dGVzdDpkZHNhZDgzMTI2M2tkYTAyODkyNzRuZmQ="]
    }
    
    public var publicKeys: PublicKeys? {
        return nil
    }
    
    public var loggers: [Logger]? {
        return [ConsoleLogger()]
    }
}

public class Network {
    
    public static let shared = Network()
    private var configuration: Configuration
    private var service: Service
    
    init(configuration: Configuration = EMOMDefaultConfiguration()) {
        self.configuration = configuration
        self.service = Service(configuration: configuration)
    }
    
    private func execute<S:Serializer>(request: Request, serializer: S, completion: @escaping ((_ response: S.Response) -> Void)) {
        service.execute(request, with: serializer, completion: completion)
    }
    
    public func fetchVeloStations(completion: @escaping ((_ items: [VeloItem]?) -> Void)) {
        let request = VeloRequest()
        let serializer = CodableSerializer<[VeloItem]>()
        execute(request: request, serializer: serializer, completion: { response in
            switch response {
            case .failure(let error):
                print("Failure \(error)")
            case .success(let items):
                guard let items = items else { return completion([]) }
                completion(items)
            }
        })
    }
    
    public func fetchAnniversaries(completion: @escaping ((_ response: BambooBirthDayResponse?) -> Void)) {
        let request = AnniversaryRequest()
        let serializer = CodableSerializer<BambooBirthDayResponse>()
        
        execute(request: request, serializer: serializer, completion: { response in
            switch response {
            case .failure(let error):
                print("Failure \(error)")
            case .success(let item):
                guard let item = item else { return completion(nil) }
                completion(item)
            }
        })
    }
    
    public func fetchCareTickets(completion: @escaping ((_ response: [CareTicket]?) -> Void)) {
        let request = CareRequest()
        let serializer = CodableSerializer<[CareTicket]>()
        
        execute(request: request, serializer: serializer, completion: { response in
            switch response {
            case .failure(let error):
                print("Failure \(error)")
            case .success(let items):
                guard let items = items else { return completion(nil) }
                completion(items)
            }
        })
    }
    
    public func fetchEvents(completion: @escaping ((_ response: [Event]?) -> Void)) {
        let request = EventsRequest()
        let serializer = CodableSerializer<EventsResponse>()
        
        execute(request: request, serializer: serializer, completion: { response in
            switch response {
            case .failure(let error):
                print("Failure \(error)")
            case .success(let response):
                guard let response = response else { return completion(nil) }
                completion(response.data)
            }
        })
    }
    
}
