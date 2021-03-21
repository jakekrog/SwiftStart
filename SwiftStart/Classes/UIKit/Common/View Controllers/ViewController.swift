//
//  ViewController.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class ViewController: UIViewController {
    // MARK: - Open Properties
    open var defaultChildren: [UIViewController] { [] }
    open var defaultGestureRecognizers: [UIGestureRecognizer] { [] }
    open var defaultLayoutGuides: [UILayoutGuide] { [] }
    open var defaultSubviews: [UIView] { [] }
    
    // MARK: - Initialization
    public init() { super.init(nibName: nil, bundle: nil) }
    
    public required init?(coder: NSCoder) { super.init(coder: coder) }
    
    public convenience init(_ initializer: (ViewController) -> Void) {
        self.init()
        initializer(self)
    }
    
    // MARK: - UIViewController
    override open func viewDidLoad() {
        super.viewDidLoad()
        
        add(
            children: defaultChildren,
            viewConstraints: createDefaultConstraints(),
            viewGestureRecognizers: defaultGestureRecognizers,
            viewLayoutGuides: defaultLayoutGuides,
            viewSubviews: defaultSubviews
        )
    }
    
    // MARK: - Open Functions
    open func createDefaultConstraints() -> [NSLayoutConstraint] { [] }
    
    // MARK: Actions
    @objc
    open func close(_ sender: Any?) {
        dismiss(animated: true)
    }
}
