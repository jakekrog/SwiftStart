//
//  UncodableCollectionViewCell.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/5/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

open class UncodableCollectionViewCell: CollectionViewCell {
    // MARK: - Initialization
    override public init(frame: CGRect) { super.init(frame: frame) }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
