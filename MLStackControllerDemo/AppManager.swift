//
//  AppManager.swift
//  MLStackControllerDemo
//
//  Created by Michel Anderson Lutz Teixeira on 29/05/19.
//  Copyright © 2019 micheltlutz. All rights reserved.
//

import UIKit

/*
 Class AppManager mamage a app flow initial ViewControllers
 */
final class AppManager {
    /*
     Singleton constant
     */
    static let shared = AppManager()
    /*
     DefaultWindow
     
     SeeAlso `UIWindow`
     */
    var window: UIWindow!

    /*
     Set a window rootViewController app
     */
    var rootViewController: UIViewController? {
        didSet {
            if let viewController = rootViewController {
                window.rootViewController = viewController
            }
        }
    }
    
    init() {}
    
    /*
     Show initial ViewController to verify user authentication token
     */
    func show(in window: UIWindow?) {
        guard let mainWindow = window else { fatalError("Cannot layout app with a nil window.") }
        mainWindow.backgroundColor = .white
        self.window = mainWindow
        rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}
