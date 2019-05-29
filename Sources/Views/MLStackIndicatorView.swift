//
//  MLStackIndicatorView.swift
//  MLStackController-iOS
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

open class MLStackIndicatorView: UIView {
    
    var style: Style = .line {
        didSet {
            switch self.style {
            case .line:
                self.animate {
                    self.leftView.transform = .identity
                    self.rightView.transform = .identity
                }
            case .arrow:
                self.animate {
                    let angle = CGFloat(20 * Float.pi / 180)
                    self.leftView.transform = CGAffineTransform.init(rotationAngle: angle)
                    self.rightView.transform = CGAffineTransform.init(rotationAngle: -angle)
                }
            }
            
        }
    }
    
    var color: UIColor = UIColor.init(red: 202/255, green: 201/255, blue: 207/255, alpha: 1) {
        didSet {
            self.leftView.backgroundColor = self.color
            self.rightView.backgroundColor = self.color
        }
    }
    
    private var leftView: UIView = UIView()
    private var rightView: UIView = UIView()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = UIColor.clear
        self.addSubview(self.leftView)
        self.addSubview(self.rightView)
        self.color = UIColor.init(red: 202/255, green: 201/255, blue: 207/255, alpha: 1)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func sizeToFit() {
        super.sizeToFit()
        self.frame = CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: 36, height: 13)
        
        let height: CGFloat = 5
        let correction = height / 2
        
        self.leftView.frame = CGRect.init(x: 0, y: 0, width: self.frame.width / 2 + correction, height: height)
        self.leftView.center.y = self.frame.height / 2
        self.leftView.layer.cornerRadius = min(self.leftView.frame.width, self.leftView.frame.height) / 2
        
        self.rightView.frame = CGRect.init(x: self.frame.width / 2 - correction, y: 0, width: self.frame.width / 2 + correction, height: height)
        self.rightView.center.y = self.frame.height / 2
        self.rightView.layer.cornerRadius = min(self.leftView.frame.width, self.leftView.frame.height) / 2
    }
    
    private func animate(animations: @escaping (() -> Void)) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [.beginFromCurrentState, .curveEaseOut], animations: {
            animations()
        })
    }
    
    enum Style {
        case arrow
        case line
    }
}
