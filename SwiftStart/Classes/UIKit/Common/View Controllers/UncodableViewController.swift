//
//  UncodableViewController.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import UIKit

open class UncodableViewController: ViewController {
    override public init() { super.init() }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
