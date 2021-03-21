//
//  EndpointHTTPDataTaskProvider.swift
//  SwiftStart
//
//  Created by Jake Krog on 1/6/21.
//

public protocol EndpointHTTPDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func httpDataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask
}

public extension EndpointHTTPDataTaskProvider {
    @discardableResult
    func startDataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask {
        let dataTask = httpDataTask(with: endpoint, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
