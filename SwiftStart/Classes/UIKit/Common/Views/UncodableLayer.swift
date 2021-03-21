//
//  UncodableLayer.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class UncodableLayer: CALayer {
    override public init() {
        super.init()
    }
    
    override public init(layer: Any) {
        super.init(layer: layer)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(_ initializer: (UncodableLayer) -> Void) {
        self.init()
        initializer(self)
    }
}
