//
//  URLSessionResults.swift
//  SwiftStart
//
//  Created by Jake Krog on 1/7/21.
//

// swiftlint:disable line_length

// MARK: - DataTaskResult
public typealias DataTaskResult<E: Error> = Result<(Data, URLResponse), E>
public typealias DataTaskResultHandler<E: Error> = (DataTaskResult<E>) -> Void

public typealias OptionalDataTaskResult<E: Error> = Result<(Data?, URLResponse), E>
public typealias OptionalDataTaskResultHandler<E: Error> = (DataTaskResult<E>) -> Void

// MARK: - HTTPDataTaskResult
public typealias HTTPDataTaskResult<E: Error> = Result<(Data, HTTPURLResponse), E>
public typealias HTTPDataTaskResultHandler<E: Error> = (HTTPDataTaskResult<E>) -> Void

public typealias OptionalHTTPDataTaskResult<E: Error> = Result<(Data?, HTTPURLResponse), E>
public typealias OptionalHTTPDataTaskResultHandler<E: Error> = (HTTPDataTaskResult<E>) -> Void

// MARK: - DecodableDataTaskResult
public typealias DecodableDataTaskResult<T: Decodable, E: Error> = Result<(T, URLResponse), E>
public typealias DecodableDataTaskResultHandler<T: Decodable, E: Error> = (DecodableDataTaskResult<T, E>) -> Void

public typealias OptionalDecodableDataTaskResult<T: Decodable, E: Error> = Result<(T?, URLResponse), E>
public typealias OptionalDecodableDataTaskResultHandler<T: Decodable, E: Error> = (DecodableDataTaskResult<T, E>) -> Void

// MARK: - DecodableHTTPDataTaskResult
public typealias DecodableHTTPDataTaskResult<T: Decodable, E: Error> = Result<(T, HTTPURLResponse), E>
public typealias DecodableHTTPDataTaskResultHandler<T: Decodable, E: Error> = (DecodableHTTPDataTaskResult<T, E>) -> Void

public typealias OptionalDecodableHTTPDataTaskResult<T: Decodable, E: Error> = Result<(T?, HTTPURLResponse), E>
public typealias OptionalDecodableHTTPDataTaskResultHandler<T: Decodable, E: Error> = (OptionalDecodableHTTPDataTaskResult<T, E>) -> Void
