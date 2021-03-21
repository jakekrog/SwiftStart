//
//  NSObject+Extensions.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import Foundation

public extension NSObject {
    convenience init(_ initializer: (Self) -> Void) {
        self.init()
        initializer(self)
    }
}
