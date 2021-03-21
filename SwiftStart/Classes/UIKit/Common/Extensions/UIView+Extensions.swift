//
//  UIView+Extensions.swift
//  Mandalify
//
//  Created by Jake Krog on 4/24/18.
//  Copyright © 2018 Jake Krog. All rights reserved.
//

import UIKit

public extension UIView {
    var tableCellContainer: UITableViewCell? { superview(of: UITableViewCell.self) }
    
    func add(
        constraints: [NSLayoutConstraint] = [],
        gestureRecognizers: [UIGestureRecognizer] = [],
        layoutGuides: [UILayoutGuide] = [],
        subviews: [UIView] = []
    ) {
        gestureRecognizers.forEach { addGestureRecognizer($0) }
        layoutGuides.forEach { addLayoutGuide($0) }
        addSubviews(subviews, constraints: constraints)
    }
    
    func addSubviews(_ subviews: [UIView], constraints: [NSLayoutConstraint]) {
        subviews.forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            addSubview($0)
        }
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // https://stackoverflow.com/questions/37705819/swift-find-superview-of-given-class-with-generics
    func superview<T>(of type: T.Type) -> T? {
        superview as? T ?? superview.flatMap { $0.superview(of: type) }
    }
}

public extension UIView {
    func edgeToEdgeConstraints(in layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        [
            verticalEdgeConstraints(in: layoutGuide),
            horizontalEdgeConstraints(in: layoutGuide)
        ].flatMap { $0 }
    }
    
    func edgeToEdgeConstraints(in view: UIView) -> [NSLayoutConstraint] {
        [
            verticalEdgeConstraints(in: view),
            horizontalEdgeConstraints(in: view)
        ].flatMap { $0 }
    }
    
    func horizontalEdgeConstraints(in layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        [
            leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            layoutGuide.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
    }
    
    func horizontalEdgeConstraints(in view: UIView) -> [NSLayoutConstraint] {
        [
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor)
        ]
    }
    
    func verticalEdgeConstraints(in layoutGuide: UILayoutGuide) -> [NSLayoutConstraint] {
        [
            topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            layoutGuide.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
    }
    
    func verticalEdgeConstraints(in view: UIView) -> [NSLayoutConstraint] {
        [
            topAnchor.constraint(equalTo: view.topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor)
        ]
    }
}
