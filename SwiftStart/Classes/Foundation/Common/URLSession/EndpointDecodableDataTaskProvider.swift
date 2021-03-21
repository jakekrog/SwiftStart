//
//  EndpointDecodableDataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public protocol EndpointDecodableDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func dataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
}

public extension EndpointDecodableDataTaskProvider {
    @discardableResult
    func startDataTask<T: Decodable>(
        with endpoint: EndpointProtocol,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask {
        let dataTask = self.dataTask(with: endpoint, type: type, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
