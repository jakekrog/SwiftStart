//
//  DecodableHTTPDataTaskProvider.swift
//  SwiftStart
//
//  Created by Jake Krog on 1/6/21.
//

public protocol DecodableHTTPDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func httpDataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startHTTPDataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
}

public extension DecodableHTTPDataTaskProvider {
    @discardableResult
    func startHTTPDataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask {
        let dataTask = httpDataTask(with: urlRequest, type: type, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
