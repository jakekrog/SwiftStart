//
//  URLQueryItemEncodable.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public protocol URLQueryItemEncodable: Encodable {
    associatedtype CodingKeys: CaseIterable, CodingKey
    
    func urlQueryItemValue(for key: CodingKeys) -> String?
}
