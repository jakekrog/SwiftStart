//
//  DecodableDataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public protocol DecodableDataTaskProvider {
    associatedtype Error: Swift.Error
    
    func dataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask
}

public extension DecodableDataTaskProvider {
    @discardableResult
    func startDataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, Error>
    ) -> URLSessionDataTask {
        let dataTask = self.dataTask(with: urlRequest, type: type, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
