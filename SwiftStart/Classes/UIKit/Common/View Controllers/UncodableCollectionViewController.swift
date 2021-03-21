//
//  UncodableCollectionViewController.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class UncodableCollectionViewController: UICollectionViewController {
    override public init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // TODO: add parameter to defer initializer invocation?
    public convenience init(
        collectionViewLayout layout: UICollectionViewLayout,
        initializer: (UncodableCollectionViewController) -> Void
    ) {
        self.init(collectionViewLayout: layout)
        initializer(self)
    }
}
