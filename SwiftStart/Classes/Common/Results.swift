//
//  Results.swift
//  SwiftStart
//
//  Created by Jake Krog on 12/28/20.
//

public typealias DataResult<E: Error> = Result<Data, E>
public typealias DataResultHandler<E: Error> = (DataResult<E>) -> Void

public typealias OptionalDataResult<E: Error> = Result<Data?, E>
public typealias OptionalDataResultHandler<E: Error> = (OptionalDataResult<E>) -> Void

public typealias DecodableResult<T: Decodable, E: Error> = Result<T, E>
public typealias DecodableResultHandler<T: Decodable, E: Error> =
    (DecodableResult<T, E>) -> Void

public typealias OptionalDecodableResult<T: Decodable, E: Error> = Result<T?, E>
public typealias OptionalDecodableResultHandler<T: Decodable, E: Error> =
    (OptionalDecodableResult<T, E>) -> Void

public typealias VoidResult<E: Error> = Result<Void, E>
public typealias VoidResultHandler<E: Error> = (VoidResult<E>) -> Void
