//
//  UncodableTableViewController.swift
//  MandalifyKit
//
//  Created by Jake Krog on 3/6/20.
//  Copyright © 2020 Jake Krog. All rights reserved.
//

import UIKit

open class UncodableTableViewController: UITableViewController {
    override public init(style: UITableView.Style) {
        super.init(style: style)
    }
    
    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public convenience init(
        style: UITableView.Style, initializer: (UncodableTableViewController) -> Void
    ) {
        self.init(style: style)
        initializer(self)
    }
}
