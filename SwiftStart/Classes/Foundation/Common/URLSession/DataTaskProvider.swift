//
//  DataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

public protocol DataTaskProvider {
    associatedtype Error: Swift.Error
    
    func dataTask(
        with urlRequest: URLRequest,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask
    
    @discardableResult
    func startDataTask(
        with urlRequest: URLRequest,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask
}

public extension DataTaskProvider {
    @discardableResult
    func startDataTask(
        with urlRequest: URLRequest,
        completion: @escaping DataTaskResultHandler<Error>
    ) -> URLSessionDataTask {
        let dataTask = self.dataTask(with: urlRequest, completion: completion)
        dataTask.resume()
        return dataTask
    }
}
