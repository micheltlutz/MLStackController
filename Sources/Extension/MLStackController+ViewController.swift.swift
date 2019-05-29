//
//  MLStackController+ViewController.swift.swift
//  MLStackController-iOS
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

extension UIViewController {
    public var isPresentedAsStork: Bool {
        return transitioningDelegate is MLStackTransitionDelegate
            && modalPresentationStyle == .custom
            && presentingViewController != nil
    }
    
    public func presentAsStack(_ controller: UIViewController, height: CGFloat? = nil) {
        let transitionDelegate = MLStackTransitionDelegate()
        transitionDelegate.customHeight = height
        controller.transitioningDelegate = transitionDelegate
        controller.modalPresentationStyle = .custom
        controller.modalPresentationCapturesStatusBarAppearance = true
        self.present(controller, animated: true, completion: nil)
    }
    
    public func presentAsStack(_ controller: UIViewController, height: CGFloat?, showIndicator: Bool, showCloseButton: Bool, complection: (() -> Void)? = nil) {
        let transitionDelegate = MLStackTransitionDelegate()
        transitionDelegate.customHeight = height
        transitionDelegate.showCloseButton = showCloseButton
        transitionDelegate.showIndicator = showIndicator
        controller.transitioningDelegate = transitionDelegate
        controller.modalPresentationStyle = .custom
        controller.modalPresentationCapturesStatusBarAppearance = true
        self.present(controller, animated: true, completion: complection)
    }
}
