//
//  CollectionViewCell.swift
//  SwiftStart
//
//  Created by Jake Krog on 3/20/21.
//

import Reusable
import UIKit

open class CollectionViewCell: UICollectionViewCell, Reusable {
    // MARK: - Open Properties
    open var defaultContentLayoutGuides: [UILayoutGuide] { [] }
    open var defaultContentSubviews: [UIView] { [] }
    
    // MARK: - Initialization
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.add(
            constraints: createDefaultContentConstraints(),
            layoutGuides: defaultContentLayoutGuides,
            subviews: defaultContentSubviews
        )
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        contentView.add(
            constraints: createDefaultContentConstraints(),
            layoutGuides: defaultContentLayoutGuides,
            subviews: defaultContentSubviews
        )
    }
    
    // MARK: - Open Functions
    open func createDefaultContentConstraints() -> [NSLayoutConstraint] { [] }
}
