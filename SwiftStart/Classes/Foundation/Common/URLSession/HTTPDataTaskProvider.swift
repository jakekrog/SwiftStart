//
//  HTTPDataTaskProvider.swift
//  SwiftStart
//
//  Created by Jake Krog on 1/6/21.
//

public protocol HTTPDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func httpDataTask(
        with urlRequest: URLRequest,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startHTTPDataTask(
        with urlRequest: URLRequest,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask
}

public extension HTTPDataTaskProvider {
    @discardableResult
    func startHTTPDataTask(
        with urlRequest: URLRequest,
        completion: @escaping HTTPDataTaskResultHandler<Error>
    ) -> URLSessionDataTask {
        let httpDataTask = self.httpDataTask(with: urlRequest, completion: completion)
        httpDataTask.resume()
        return httpDataTask
    }
}
