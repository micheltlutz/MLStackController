//
//  MLStackDismissingAnimationController.swift
//  MLStackController-iOS
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

final class MLStackDismissingAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        guard let presentedViewController = transitionContext.viewController(forKey: .from) else {
            return
        }
        
        let finalFrameForPresentedView = transitionContext.finalFrame(for: presentedViewController)
        
        let containerView = transitionContext.containerView
        let offscreenFrame = CGRect(x: 0, y: containerView.bounds.height, width: finalFrameForPresentedView.width, height: finalFrameForPresentedView.height)
        
        UIView.animate(
            withDuration: transitionDuration(using: transitionContext),
            delay: 0,
            usingSpringWithDamping: 1,
            initialSpringVelocity: 1,
            options: .curveEaseIn,
            animations: {
                presentedViewController.view.frame = offscreenFrame
        }) { finished in
            transitionContext.completeTransition(finished)
        }
    }
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.6
    }
}


