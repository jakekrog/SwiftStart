//
//  UncodableTabBarController.swift
//  MandalifyKit
//
//  Created by Jake Krog on 11/30/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class UncodableTabBarController: UITabBarController {
    // MARK: - Initialization
    public init() { super.init(nibName: nil, bundle: nil) }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(_ initializer: (UncodableTabBarController) -> Void) {
        self.init()
        initializer(self)
    }
}
