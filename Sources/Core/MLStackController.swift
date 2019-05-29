//
//  MLStackController.swift
//  MLStackController
//
//  Created by Michel Lutz on 01/04/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

public struct MLStackController {
    static let name = "MLStackController"
    static public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if let controller = self.controller(for: scrollView) {
            if let presentationController = controller.presentationController as? MLStackPresentationController {
                let translation = -(scrollView.contentOffset.y + scrollView.contentInset.top)
                if translation >= 0 {
                    if controller.isBeingPresented { return }
                    scrollView.subviews.forEach {
                        $0.transform = CGAffineTransform(translationX: 0, y: -translation)
                    }
                    presentationController.setIndicator(style: scrollView.isTracking ? .line : .arrow)
                    if translation >= presentationController.translateForDismiss * 0.4 {
                        if !scrollView.isTracking && !scrollView.isDragging {
                            presentationController.presentedViewController.dismiss(animated: true, completion: {
                                presentationController.stackDelegate?.didDismissStackBySwipe?()
                            })
                            return
                        }
                    }
                    if presentationController.pan?.state != UIGestureRecognizer.State.changed {
                        presentationController.scrollViewDidScroll(translation * 2)
                    }
                } else {
                    presentationController.setIndicator(style: .arrow)
                    presentationController.scrollViewDidScroll(0)
                }
                
                if translation < -5 {
                    presentationController.setIndicator(visible: false, forse: (translation < -50))
                } else {
                    presentationController.setIndicator(visible: true, forse: false)
                }
            }
        }
    }
    
    static public var topScrollIndicatorInset: CGFloat {
        return 6
    }
    
    static public func updatePresentingController(parent controller: UIViewController) {
        if let presentationController = controller.presentedViewController?.presentationController as? MLStackPresentationController {
            presentationController.updatePresentingController()
        }
    }
    
    static public func updatePresentingController(modal controller: UIViewController) {
        if let presentationController = controller.presentationController as? MLStackPresentationController {
            presentationController.updatePresentingController()
        }
    }
    
    static private func controller(for view: UIView) -> UIViewController? {
        var nextResponder = view.next
        while nextResponder != nil && !(nextResponder! is UIViewController) {
            nextResponder = nextResponder!.next
        }
        return nextResponder as? UIViewController
    }
    
    private init() {}
}

