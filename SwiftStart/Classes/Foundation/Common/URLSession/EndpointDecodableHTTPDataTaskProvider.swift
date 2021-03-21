//
//  EndpointDecodableHTTPDataTaskProvider.swift
//  SwiftStart
//
//  Created by Jake Krog on 1/6/21.
//

public protocol EndpointDecodableHTTPDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func httpDataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
}

public extension EndpointDecodableHTTPDataTaskProvider {
    @discardableResult
    func startDataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask {
        let dataTask = httpDataTask(with: endpoint, type: type, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
