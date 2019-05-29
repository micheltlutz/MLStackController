//
//  MLStackControllerDelegate.swift
//  MLStackController-iOS
//
//  Created by Michel Anderson Lutz Teixeira on 28/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

@objc public protocol MLStackControllerDelegate: class {
    
    @objc optional func didDismissStorkBySwipe()
    
    @objc optional func didDismissStorkByTap()
}
