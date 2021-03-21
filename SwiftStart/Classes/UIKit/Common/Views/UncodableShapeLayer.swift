//
//  UncodableShapeLayer.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import UIKit

open class UncodableShapeLayer: CAShapeLayer {
    override public init() { super.init() }
    
    override public init(layer: Any) { super.init(layer: layer) }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
