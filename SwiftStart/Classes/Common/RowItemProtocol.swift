//
//  RowItemProtocol.swift
//  MandalifyKit
//
//  Created by Jake Krog on 12/16/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import Foundation

public protocol RowItemProtocol: LocalizableTitle {
    var accessoryType: UITableViewCell.AccessoryType { get }
    var cellStyle: UITableViewCell.CellStyle { get }
}

public extension RowItemProtocol {
    var accessoryType: UITableViewCell.AccessoryType { .none }
    var cellStyle: UITableViewCell.CellStyle { .default }
}

public enum EndpointMethod: String {
    case delete = "DELETE"
    case get = "GET"
    case head = "HEAD"
    case post = "POST"
    case put = "PUT"
}

public protocol EndpointURLRequestProvider {
    func urlRequest(for endpoint: EndpointProtocol) -> URLRequest
}

public protocol EndpointProtocol {
    var cachePolicy: URLRequest.CachePolicy { get }
    var httpBody: Data? { get }
    var method: EndpointMethod { get }
    var path: String { get }
    var responseType: Decodable.Type? { get }
    
    func urlComponents(relativeTo baseURLComponents: URLComponents) -> URLComponents
    func urlRequest(relativeTo baseURL: URL) -> URLRequest
}

public extension EndpointProtocol {
    var cachePolicy: URLRequest.CachePolicy { .useProtocolCachePolicy }
    var httpBody: Data? { nil }
    
    func defaultURLComponents(relativeTo baseComponents: URLComponents) -> URLComponents {
        var defaultComponents = baseComponents
        defaultComponents.path = path
        return defaultComponents
    }
    
    func urlComponents(relativeTo baseComponents: URLComponents) -> URLComponents {
        defaultURLComponents(relativeTo: baseComponents)
    }
    
    func urlRequest(relativeTo baseURL: URL) -> URLRequest {
        guard let baseComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        else { fatalError() }
        
        return urlRequest(relativeTo: baseComponents)
    }
    
    func urlRequest(relativeTo baseComponents: URLComponents) -> URLRequest {
        let urlComponents = self.urlComponents(relativeTo: baseComponents)
        guard let url = urlComponents.url else { fatalError() }
        
        var urlRequest = URLRequest(url: url, cachePolicy: cachePolicy)
        urlRequest.httpMethod = method.rawValue
        return urlRequest
    }
}
