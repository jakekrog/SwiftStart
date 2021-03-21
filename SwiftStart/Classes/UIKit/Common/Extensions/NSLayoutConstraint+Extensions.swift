//
//  NSLayoutConstraint+Extensions.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import UIKit

public extension NSLayoutConstraint {
    func withPriority(_ priority: UILayoutPriority) -> NSLayoutConstraint {
        self.priority = priority
        return self
    }
}

public extension Array where Element == NSLayoutConstraint {
    func withPriority(_ priority: UILayoutPriority) -> [NSLayoutConstraint] {
        forEach { $0.priority = priority }
        return self
    }
}
