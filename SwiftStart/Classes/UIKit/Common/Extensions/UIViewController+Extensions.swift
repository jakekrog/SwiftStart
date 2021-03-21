//
//  UIViewController+Extensions.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import UIKit

public extension UIViewController {
    func add(
        children: [UIViewController] = [],
        viewConstraints: [NSLayoutConstraint] = [],
        viewGestureRecognizers: [UIGestureRecognizer] = [],
        viewLayoutGuides: [UILayoutGuide] = [],
        viewSubviews: [UIView] = []
    ) {
        children.forEach { assert(viewSubviews.contains($0.view)) }
        viewGestureRecognizers.forEach { view.addGestureRecognizer($0) }
        viewLayoutGuides.forEach { view.addLayoutGuide($0) }
        children.forEach { addChild($0) }
        view.addSubviews(viewSubviews, constraints: viewConstraints)
        children.forEach { $0.didMove(toParent: self) }
    }
}
