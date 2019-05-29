//
//  MLStackTransitionDelegate.swift
//  MLStackController-iOS
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

public final class MLStackTransitionDelegate: NSObject, UIViewControllerTransitioningDelegate {
    public var swipeToDismissEnabled: Bool = true
    public var tapAroundToDismissEnabled: Bool = true
    public var showCloseButton: Bool = false
    public var showIndicator: Bool = true
    public var indicatorColor: UIColor = UIColor.init(red: 202/255, green: 201/255, blue: 207/255, alpha: 1)
    public var hideIndicatorWhenScroll: Bool = false
    public var customHeight: CGFloat? = nil
    public var translateForDismiss: CGFloat = 200
    public var cornerRadius: CGFloat = 10
    
    public var hapticMoments: [MLStackHapticMoments] = [.willDismissIfRelease]
    public weak var stackDelegate: MLStackControllerDelegate? = nil
    
    public func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        let controller = MLStackPresentationController(presentedViewController: presented, presenting: presenting)
        controller.swipeToDismissEnabled = self.swipeToDismissEnabled
        controller.tapAroundToDismissEnabled = self.tapAroundToDismissEnabled
        controller.showCloseButton = self.showCloseButton
        controller.showIndicator = self.showIndicator
        controller.indicatorColor = self.indicatorColor
        controller.hideIndicatorWhenScroll = self.hideIndicatorWhenScroll
        controller.customHeight = self.customHeight
        controller.translateForDismiss = self.translateForDismiss
        controller.cornerRadius = self.cornerRadius
        controller.hapticMoments = self.hapticMoments
        controller.transitioningDelegate = self
        controller.storkDelegate = self.stackDelegate
        return controller
    }
}
