//
//  UIResponder+Extensions.swift
//  Pods
//
//  Created by Jake Krog on 12/21/20.
//

import UIKit

public extension UIResponder {
    static let keyboardDidChangeAppearanceNotifications: [Notification.Name] = [
        UIResponder.keyboardDidShowNotification,
        UIResponder.keyboardDidHideNotification
    ]
    
    static let keyboardWillChangeAppearanceNotifications: [Notification.Name] = [
        UIResponder.keyboardWillShowNotification,
        UIResponder.keyboardWillHideNotification
    ]
}
