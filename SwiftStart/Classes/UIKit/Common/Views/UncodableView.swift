//
//  UncodableView.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import UIKit

open class UncodableView: View {
    public override init(frame: CGRect) { super.init(frame: frame) }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
