//
//  URLSessionError.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public enum URLSessionError: LocalizedError {
    case httpDecodingError(data: Data, error: Error, response: HTTPURLResponse)
    case httpError(Error, response: HTTPURLResponse)
    case invalidHTTPResponse(URLResponse)
    case invalidURLResponse(URLResponse)
    case urlDecodingError(data: Data, error: Error, response: URLResponse)
    case urlError(Error, response: URLResponse?)
    
//    case noData
    case noResponse
}
