//
//  EndpointDataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public protocol EndpointDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func dataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask
}

public extension EndpointDataTaskProvider {
    @discardableResult
    func startDataTask(
        with endpoint: EndpointProtocol,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask {
        let dataTask = self.dataTask(with: endpoint, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
