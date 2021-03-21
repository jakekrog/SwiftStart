//
//  URLSession+DataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

extension URLSession: DataTaskProvider {
    public func dataTask(
        with urlRequest: URLRequest,
        completion: @escaping DataTaskResultHandler<URLSessionError>
    ) -> URLSessionDataTask {
        dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(.urlError(error, response: response)))
                return
            }
            
            guard let response = response
            else { completion(.failure(.noResponse)); return }
            
            completion(.success((data ?? Data(), response)))
        }
    }
}

extension URLSession: HTTPDataTaskProvider {
    public func httpDataTask(
        with urlRequest: URLRequest,
        completion: @escaping HTTPDataTaskResultHandler<URLSessionError>
    ) -> URLSessionDataTask {
        dataTask(with: urlRequest) { result in
            switch result {
            case let .failure(error):
                completion(.failure(error))
                
            case let .success((data, response)):
                guard let httpResponse = response as? HTTPURLResponse else {
                    completion(.failure(.invalidHTTPResponse(response)))
                    return
                }
                
                completion(.success((data, httpResponse)))
            }
        }
    }
}
