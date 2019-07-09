//
//  StrategySerializer.swift
//  status-page-shared
//
//  Created by Hannes Van den Berghe on 09/07/2019.
//  Copyright © 2019 icapps. All rights reserved.
//

import Cara
import Foundation

public class StrategySerializer<Model: Codable>: Serializer {
    
    // MARK: - Internal
    
    private var decoder: JSONDecoder
    
    // MARK: - Init
    
    /// You can customise the `CodableSerializer` by passing another `JSONDecoder` is needed.
    ///
    /// - parameter decoder: The decoder what will be used to convert the json.
    public init(decoder: JSONDecoder) {
        self.decoder = decoder
    }
    
    // MARK: - Response
    
    /// The codable response returned by the `CodableSerializer`.
    public enum Response {
        /// When data is correctly parsed we return the `Codable` instance. This can also be nil when no
        /// data was returned.
        case success(Model?)
        /// Failure is triggered an error is returned or when parsing the data didn't succeed.
        case failure(Error)
    }
    
    // MARK: - Serialize
    
    public func serialize(data: Data?, error: Error?, response: HTTPURLResponse?) -> StrategySerializer<Model>.Response {
        // When an error occurs we return this error.
        if let error = error { return .failure(error) }
        
        // When a status code larger or equal than 400 is returned we return a custom error.
        if
            let response = response,
            let responseError = ResponseError(statusCode: response.statusCode) {
            return .failure(responseError)
        }
        
        /// When no data object (or an empty one) is returned from the server we have a successful.
        guard
            let data = data,
            !data.isEmpty else { return .success(nil) }
        
        do {
            let result = try JSONDecoder.strategyDecoder.decode(Model.self, from: data)
            return .success(result)
        } catch {
            return .failure(error)
        }
    }
    
}

public extension JSONDecoder {
    
    static var strategyDecoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom({ (decoder) -> Date in
            let container = try decoder.singleValueContainer()
            let dateStr = try container.decode(String.self)
            
            let formatter = DateFormatter()
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.locale = Locale.current
            formatter.timeZone = TimeZone.current
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
            if let date = formatter.date(from: dateStr) {
                return date
            }
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssXXXXX"
            if let date = formatter.date(from: dateStr) {
                return date
            }
            
            throw GeneralErrors.generalError
        })
        
        return decoder
    }
}
