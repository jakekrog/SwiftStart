//
//  URLSession+DecodableDataTaskProvider.swift
//  SpotifySwift
//
//  Created by Jake Krog on 12/27/20.
//

extension URLSession: DecodableDataTaskProvider {
    public func dataTask<T: Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableDataTaskResultHandler<T, URLSessionError>
    ) -> URLSessionDataTask {
        dataTask(with: urlRequest) { result in
            switch result {
            case let .failure(error):
                completion(.failure(error))
                
            case let .success((data, response)):
                let decoder = JSONDecoder()
                
                do {
                    let decoded = try decoder.decode(T.self, from: data)
                    completion(.success((decoded, response)))
                } catch {
                    if let httpResponse = response as? HTTPURLResponse {
                        completion(.failure(.httpDecodingError(data: data, error: error, response: httpResponse)))
                    } else {
                        completion(.failure(.urlDecodingError(data: data, error: error, response: response)))
                    }
                }
            }
        }
    }
}

extension URLSession: DecodableHTTPDataTaskProvider {
    public func httpDataTask<T : Decodable>(
        with urlRequest: URLRequest,
        type: T.Type,
        completion: @escaping DecodableHTTPDataTaskResultHandler<T, URLSessionError>
    ) -> URLSessionDataTask {
        dataTask(with: urlRequest, type: type) { result in
            switch result {
            case let .failure(error):
                completion(.failure(error))
                
            case let .success((decoded, response)):
                guard let httpResponse = response as? HTTPURLResponse
                else { completion(.failure(.invalidHTTPResponse(response))); return }
                
                completion(.success((decoded, httpResponse)))
            }
        }
    }
}
