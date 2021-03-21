//
//  View.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class View: UIView {
    // MARK: - Open Properties
    open var defaultGestureRecognizers: [UIGestureRecognizer] { [] }
    open var defaultLayoutGuides: [UILayoutGuide] { [] }
    open var defaultSubviews: [UIView] { [] }
    
    // MARK: - Initialization
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        add(
            constraints: createDefaultConstraints(),
            gestureRecognizers: defaultGestureRecognizers,
            layoutGuides: defaultLayoutGuides,
            subviews: defaultSubviews
        )
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        add(
            constraints: createDefaultConstraints(),
            gestureRecognizers: defaultGestureRecognizers,
            layoutGuides: defaultLayoutGuides,
            subviews: defaultSubviews
        )
    }
    
    // MARK: - Open Functions
    open func createDefaultConstraints() -> [NSLayoutConstraint] { [] }
}
