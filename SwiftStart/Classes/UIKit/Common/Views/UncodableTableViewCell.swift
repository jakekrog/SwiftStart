//
//  UncodableTableViewCell.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class UncodableTableViewCell: TableViewCell {
    // MARK: - Initialization
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
