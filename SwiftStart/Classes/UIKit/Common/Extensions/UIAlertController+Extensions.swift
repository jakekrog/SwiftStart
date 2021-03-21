//
//  UIAlertController+Extensions.swift
//  Mandalify
//
//  Created by Jake Krog on 11/21/18.
//  Copyright © 2018 Jake Krog. All rights reserved.
//

import UIKit

public enum LocalizedString {
    // MARK: - Alerts
    public static let errorAlertTitle = NSLocalizedString("Error", comment: "'Error' alert title")
    
    // MARK: - Buttons
    public static let backButtonTitle = NSLocalizedString("Back", comment: "'Back' button title")
    public static let dismissButtonTitle =
        NSLocalizedString("Dismiss", comment: "'Dismiss' button title")
    public static let nextButtonTitle = NSLocalizedString("Next", comment: "'Next' button title")
    public static let skipButtonTitle = NSLocalizedString("Skip", comment: "'Skip' button title")
    
    // MARK: - Error Messages
    public static let unknownErrorMessage =
        NSLocalizedString("An unknown error occurred.", comment: "")
    public static let unknownErrorTryAgainMessage = NSLocalizedString(
        "An unknown error occurred. Please try again later.", comment: ""
    )
}

extension UIAlertAction {
    static var dismissAction: UIAlertAction {
        UIAlertAction(title: LocalizedString.dismissButtonTitle, style: .cancel, handler: nil)
    }
}

public extension UIAlertController {
    static func errorAlertController(error: Error) -> UIAlertController {
        let alertController = UIAlertController(
            title: LocalizedString.errorAlertTitle,
            message: error.localizedDescription,
            preferredStyle: .alert
        )
        
        alertController.addAction(.dismissAction)
        return alertController
    }
    
    static func unknownErrorAlertController(retry: Bool = false) -> UIAlertController {
        let alertController = UIAlertController(
            title: nil,
            message: retry
                ? LocalizedString.unknownErrorTryAgainMessage
                : LocalizedString.unknownErrorMessage,
            preferredStyle: .alert
        )
        
        alertController.addAction(.dismissAction)
        return alertController
    }
}
