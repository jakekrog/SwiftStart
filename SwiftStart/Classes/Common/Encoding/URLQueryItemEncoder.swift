//
//  URLQueryItemEncoder.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public class URLQueryItemEncoder {
    public init() {}
    
    public func encode<T: URLQueryItemEncodable>(_ value: T) throws -> [URLQueryItem] {
        T.CodingKeys.allCases.compactMap {
            guard let stringValue = value.urlQueryItemValue(for: $0)
            else { return nil }
            
            return URLQueryItem(name: $0.stringValue, value: stringValue)
        }
    }
}
